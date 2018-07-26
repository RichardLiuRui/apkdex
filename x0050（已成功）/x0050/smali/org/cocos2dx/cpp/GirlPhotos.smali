.class public Lorg/cocos2dx/cpp/GirlPhotos;
.super Lorg/cocos2dx/lib/Cocos2dxActivity;
.source "GirlPhotos.java"


# static fields
.field private static STATIC_ACTIVITY:Lorg/cocos2dx/cpp/GirlPhotos;

.field private static m_context:Landroid/content/Context;


# instance fields
.field public callPayHandler:Landroid/os/Handler;

.field private m_config:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    sput-object v0, Lorg/cocos2dx/cpp/GirlPhotos;->STATIC_ACTIVITY:Lorg/cocos2dx/cpp/GirlPhotos;

    .line 57
    sput-object v0, Lorg/cocos2dx/cpp/GirlPhotos;->m_context:Landroid/content/Context;

    .line 215
    const-string v0, "cocos2dcpp"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2dx/cpp/GirlPhotos;->m_config:Landroid/content/SharedPreferences;

    .line 175
    new-instance v0, Lorg/cocos2dx/cpp/GirlPhotos$1;

    invoke-direct {v0, p0}, Lorg/cocos2dx/cpp/GirlPhotos$1;-><init>(Lorg/cocos2dx/cpp/GirlPhotos;)V

    iput-object v0, p0, Lorg/cocos2dx/cpp/GirlPhotos;->callPayHandler:Landroid/os/Handler;

    .line 53
    return-void
.end method

.method static synthetic access$0()Landroid/content/Context;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lorg/cocos2dx/cpp/GirlPhotos;->m_context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lorg/cocos2dx/cpp/GirlPhotos;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Lorg/cocos2dx/cpp/GirlPhotos;->getPrivacyInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native callCPP(I)V
.end method

.method public static getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lorg/cocos2dx/cpp/GirlPhotos;->STATIC_ACTIVITY:Lorg/cocos2dx/cpp/GirlPhotos;

    return-object v0
.end method

.method private getPrivacyInfo()Ljava/lang/String;
    .locals 17

    .prologue
    .line 103
    sget-object v13, Lorg/cocos2dx/cpp/GirlPhotos;->m_context:Landroid/content/Context;

    const-string v14, "phone"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 104
    .local v10, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    .line 105
    .local v5, "imsi":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 106
    const-string v5, ""

    .line 109
    :cond_0
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    .line 110
    .local v4, "imei":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 111
    const-string v4, ""

    .line 114
    :cond_1
    const-string v2, ""

    .line 115
    .local v2, "channel":Ljava/lang/String;
    const-string v9, ""

    .line 116
    .local v9, "subChannel":Ljava/lang/String;
    sget-object v13, Lorg/cocos2dx/cpp/GirlPhotos;->m_context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 118
    .local v7, "packageNmae":Ljava/lang/String;
    :try_start_0
    sget-object v13, Lorg/cocos2dx/cpp/GirlPhotos;->m_context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const/16 v14, 0x80

    invoke-virtual {v13, v7, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v14, "CHANNEL"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 119
    sget-object v13, Lorg/cocos2dx/cpp/GirlPhotos;->m_context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const/16 v14, 0x80

    invoke-virtual {v13, v7, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v14, "SUB_CHANNEL"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 125
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/cocos2dx/cpp/GirlPhotos;->m_config:Landroid/content/SharedPreferences;

    const-string v14, "uuid"

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 126
    .local v11, "uuid":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 127
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v11

    .line 128
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/cocos2dx/cpp/GirlPhotos;->m_config:Landroid/content/SharedPreferences;

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    const-string v14, "uuid"

    invoke-interface {v13, v14, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 131
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/cocos2dx/cpp/GirlPhotos;->m_config:Landroid/content/SharedPreferences;

    const-string v14, "regtime"

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 132
    .local v8, "regTime":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 133
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v14, "yyyy-MM-ddHH:mm:ss"

    invoke-direct {v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 134
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/cocos2dx/cpp/GirlPhotos;->m_config:Landroid/content/SharedPreferences;

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    const-string v14, "regtime"

    invoke-interface {v13, v14, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 138
    :cond_3
    const-string v12, "unknown"

    .line 139
    .local v12, "version":Ljava/lang/String;
    const-string v1, "unknown"

    .line 143
    .local v1, "brand":Ljava/lang/String;
    :try_start_1
    sget-object v12, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 146
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 153
    :goto_1
    const-string v13, "http://116.62.142.246:90/reg?appid=%d&uuid=%s&channel=%s&subchannel=%s&regtime=%s&imsi=%s&imei=%s&version=%s&model=%s"

    const/16 v14, 0x9

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const/16 v16, 0x3ec

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v11, v14, v15

    const/4 v15, 0x2

    aput-object v2, v14, v15

    const/4 v15, 0x3

    aput-object v9, v14, v15

    const/4 v15, 0x4

    aput-object v8, v14, v15

    const/4 v15, 0x5

    aput-object v5, v14, v15

    const/4 v15, 0x6

    aput-object v4, v14, v15

    const/4 v15, 0x7

    aput-object v12, v14, v15

    const/16 v15, 0x8

    aput-object v1, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 154
    .local v6, "info":Ljava/lang/String;
    const-string v13, " "

    const-string v14, ""

    invoke-virtual {v6, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 155
    return-object v6

    .line 120
    .end local v1    # "brand":Ljava/lang/String;
    .end local v6    # "info":Ljava/lang/String;
    .end local v8    # "regTime":Ljava/lang/String;
    .end local v11    # "uuid":Ljava/lang/String;
    .end local v12    # "version":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 122
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 149
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "brand":Ljava/lang/String;
    .restart local v8    # "regTime":Ljava/lang/String;
    .restart local v11    # "uuid":Ljava/lang/String;
    .restart local v12    # "version":Ljava/lang/String;
    :catch_1
    move-exception v13

    goto :goto_1
.end method


# virtual methods
.method public callPay(I)V
    .locals 1
    .param p1, "payId"    # I

    .prologue
    .line 171
    iget-object v0, p0, Lorg/cocos2dx/cpp/GirlPhotos;->callPayHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 172
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    sput-object p0, Lorg/cocos2dx/cpp/GirlPhotos;->STATIC_ACTIVITY:Lorg/cocos2dx/cpp/GirlPhotos;

    .line 62
    sput-object p0, Lorg/cocos2dx/cpp/GirlPhotos;->m_context:Landroid/content/Context;

    .line 63
    const-string v0, "config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/cocos2dx/cpp/GirlPhotos;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/cpp/GirlPhotos;->m_config:Landroid/content/SharedPreferences;

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lorg/cocos2dx/cpp/GirlPhotos$2;

    invoke-direct {v1, p0}, Lorg/cocos2dx/cpp/GirlPhotos$2;-><init>(Lorg/cocos2dx/cpp/GirlPhotos;)V

    .line 76
    const-wide/16 v2, 0xc8

    .line 65
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 78
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/cocos2dx/cpp/GirlPhotos$3;

    invoke-direct {v1, p0}, Lorg/cocos2dx/cpp/GirlPhotos$3;-><init>(Lorg/cocos2dx/cpp/GirlPhotos;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 100
    return-void
.end method

.method public onCreateView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;
    .locals 7

    .prologue
    const/4 v1, 0x5

    .line 207
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 209
    .local v0, "glSurfaceView":Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;
    const/4 v2, 0x6

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/16 v6, 0x8

    move v3, v1

    invoke-virtual/range {v0 .. v6}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 211
    return-object v0
.end method
