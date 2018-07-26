.class public Lcom/shunpay210/sdk/LocalInfo210;
.super Ljava/lang/Object;
.source "LocalInfo210.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalInfo"

.field private static m_context:Landroid/content/Context;

.field private static m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    invoke-direct {v0}, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;-><init>()V

    sput-object v0, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/shunpay210/sdk/LocalInfo210;->m_context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 203
    sget-object v0, Lcom/shunpay210/sdk/LocalInfo210;->m_context:Landroid/content/Context;

    return-object v0
.end method

.method public static getKernelVersion()Ljava/lang/String;
    .locals 11

    .prologue
    .line 156
    const-string v6, ""

    .line 157
    .local v6, "kernelVersion":Ljava/lang/String;
    const/4 v4, 0x0

    .line 159
    .local v4, "inputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    const-string v9, "/proc/version"

    invoke-direct {v5, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .local v5, "inputStream":Ljava/io/InputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v10, 0x2000

    invoke-direct {v0, v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 166
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    const-string v3, ""

    .line 167
    .local v3, "info":Ljava/lang/String;
    const-string v8, ""

    .line 169
    .local v8, "line":Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    if-nez v8, :cond_1

    .line 176
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 177
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 184
    :goto_1
    :try_start_3
    const-string v9, ""

    if-eq v3, v9, :cond_0

    .line 185
    const-string v7, "version "

    .line 186
    .local v7, "keyword":Ljava/lang/String;
    const-string v9, "version "

    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 187
    .local v2, "index":I
    const-string v9, "version "

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v2

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 188
    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 189
    const/4 v9, 0x0

    invoke-virtual {v8, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v6

    .end local v2    # "index":I
    .end local v7    # "keyword":Ljava/lang/String;
    :cond_0
    :goto_2
    move-object v4, v5

    .line 195
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "info":Ljava/lang/String;
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v8    # "line":Ljava/lang/String;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    :goto_3
    return-object v6

    .line 160
    :catch_0
    move-exception v1

    .line 161
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_3

    .line 170
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "info":Ljava/lang/String;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "line":Ljava/lang/String;
    :cond_1
    :try_start_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v3

    goto :goto_0

    .line 172
    :catch_1
    move-exception v1

    .line 173
    .local v1, "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 176
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 177
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 178
    :catch_2
    move-exception v1

    .line 179
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 174
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 176
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 177
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 181
    :goto_4
    throw v9

    .line 178
    :catch_3
    move-exception v1

    .line 179
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 178
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 179
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 191
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 192
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_2
.end method

.method public static getLocalInfo()Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;
    .locals 1

    .prologue
    .line 199
    sget-object v0, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    return-object v0
.end method

.method public static initLocalInfo(Landroid/content/Context;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v13, 0x1

    .line 61
    if-nez p0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 64
    :cond_0
    sput-object p0, Lcom/shunpay210/sdk/LocalInfo210;->m_context:Landroid/content/Context;

    .line 68
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 69
    .local v5, "packageNmae":Ljava/lang/String;
    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    iget-object v10, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->version:Ljava/lang/String;

    if-eqz v10, :cond_1

    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    iget-object v10, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->version:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 70
    :cond_1
    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    const-string v11, "2.10"

    iput-object v11, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->version:Ljava/lang/String;

    .line 71
    :cond_2
    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    iput-object v5, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->packName:Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 74
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    invoke-virtual {v4, v5, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 75
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    sget-object v11, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, v11, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->appName:Ljava/lang/String;

    .line 78
    const-string v10, "phone"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 79
    .local v8, "tm":Landroid/telephony/TelephonyManager;
    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->imsi:Ljava/lang/String;

    .line 80
    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    iget-object v10, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->imsi:Ljava/lang/String;

    if-nez v10, :cond_3

    .line 81
    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    const-string v11, ""

    iput-object v11, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->imsi:Ljava/lang/String;

    .line 83
    :cond_3
    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->imei:Ljava/lang/String;

    .line 84
    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    iget-object v10, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->imei:Ljava/lang/String;

    if-nez v10, :cond_4

    .line 85
    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    const-string v11, ""

    iput-object v11, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->imei:Ljava/lang/String;

    .line 87
    :cond_4
    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->iccid:Ljava/lang/String;

    .line 88
    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    iget-object v10, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->iccid:Ljava/lang/String;

    if-nez v10, :cond_5

    .line 89
    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    const-string v11, ""

    iput-object v11, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->iccid:Ljava/lang/String;

    .line 91
    :cond_5
    const-string v10, "wifi"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    .line 92
    .local v9, "wifi":Landroid/net/wifi/WifiManager;
    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 93
    .local v3, "info":Landroid/net/wifi/WifiInfo;
    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->mac:Ljava/lang/String;

    .line 94
    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    iget-object v10, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->mac:Ljava/lang/String;

    if-nez v10, :cond_6

    .line 95
    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    const-string v11, ""

    iput-object v11, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->mac:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "info":Landroid/net/wifi/WifiInfo;
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v5    # "packageNmae":Ljava/lang/String;
    .end local v8    # "tm":Landroid/telephony/TelephonyManager;
    .end local v9    # "wifi":Landroid/net/wifi/WifiManager;
    :cond_6
    :goto_1
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v7, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 102
    .local v7, "time":Ljava/text/SimpleDateFormat;
    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->regTime:Ljava/lang/String;

    .line 104
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 105
    .local v6, "sp":Landroid/content/SharedPreferences;
    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    const-string v11, "user_id"

    const-string v12, ""

    invoke-interface {v6, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->userId:Ljava/lang/String;

    .line 106
    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    iget-object v10, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->userId:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_8

    .line 107
    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->userId:Ljava/lang/String;

    .line 108
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "user_id"

    sget-object v12, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    iget-object v12, v12, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->userId:Ljava/lang/String;

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 109
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "reg_time"

    sget-object v12, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    iget-object v12, v12, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->regTime:Ljava/lang/String;

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 115
    :goto_2
    :try_start_1
    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v11, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->model:Ljava/lang/String;

    .line 116
    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    sget-object v11, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v11, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->manufacturer:Ljava/lang/String;

    .line 117
    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    sget-object v11, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v11, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->osVersion:Ljava/lang/String;

    .line 118
    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    invoke-static {}, Lcom/shunpay210/sdk/LocalInfo210;->getKernelVersion()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->kernelVersion:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 123
    :goto_3
    const-string v10, "connectivity"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 124
    .local v1, "connectMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 125
    .local v3, "info":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_7

    .line 126
    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v11

    iput v11, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->netType:I

    .line 127
    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    iget v10, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->netType:I

    if-ne v13, v10, :cond_9

    .line 128
    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    iput v13, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->netType:I

    .line 134
    :cond_7
    :goto_4
    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    invoke-static {p0}, Lcom/shunpay210/sdk/SysParams210;->getSysParams(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->sysParams:Ljava/lang/String;

    .line 136
    sget-object v11, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    iget-object v10, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->version:Ljava/lang/String;

    if-nez v10, :cond_a

    const-string v10, ""

    :goto_5
    iput-object v10, v11, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->version:Ljava/lang/String;

    .line 137
    sget-object v11, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    iget-object v10, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->imsi:Ljava/lang/String;

    if-nez v10, :cond_b

    const-string v10, ""

    :goto_6
    iput-object v10, v11, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->imsi:Ljava/lang/String;

    .line 138
    sget-object v11, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    iget-object v10, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->imei:Ljava/lang/String;

    if-nez v10, :cond_c

    const-string v10, ""

    :goto_7
    iput-object v10, v11, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->imei:Ljava/lang/String;

    .line 139
    sget-object v11, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    iget-object v10, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->iccid:Ljava/lang/String;

    if-nez v10, :cond_d

    const-string v10, ""

    :goto_8
    iput-object v10, v11, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->iccid:Ljava/lang/String;

    .line 140
    sget-object v11, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    iget-object v10, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->mac:Ljava/lang/String;

    if-nez v10, :cond_e

    const-string v10, ""

    :goto_9
    iput-object v10, v11, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->mac:Ljava/lang/String;

    .line 141
    sget-object v11, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    iget-object v10, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->model:Ljava/lang/String;

    if-nez v10, :cond_f

    const-string v10, ""

    :goto_a
    iput-object v10, v11, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->model:Ljava/lang/String;

    .line 142
    sget-object v11, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    iget-object v10, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->userId:Ljava/lang/String;

    if-nez v10, :cond_10

    const-string v10, ""

    :goto_b
    iput-object v10, v11, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->userId:Ljava/lang/String;

    .line 143
    sget-object v11, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    iget-object v10, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->manufacturer:Ljava/lang/String;

    if-nez v10, :cond_11

    const-string v10, ""

    :goto_c
    iput-object v10, v11, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->manufacturer:Ljava/lang/String;

    .line 144
    sget-object v11, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    iget-object v10, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->osVersion:Ljava/lang/String;

    if-nez v10, :cond_12

    const-string v10, ""

    :goto_d
    iput-object v10, v11, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->osVersion:Ljava/lang/String;

    .line 145
    sget-object v11, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    iget-object v10, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->kernelVersion:Ljava/lang/String;

    if-nez v10, :cond_13

    const-string v10, ""

    :goto_e
    iput-object v10, v11, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->kernelVersion:Ljava/lang/String;

    .line 146
    sget-object v11, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    iget-object v10, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->regTime:Ljava/lang/String;

    if-nez v10, :cond_14

    const-string v10, ""

    :goto_f
    iput-object v10, v11, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->regTime:Ljava/lang/String;

    .line 147
    sget-object v11, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    iget-object v10, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->packName:Ljava/lang/String;

    if-nez v10, :cond_15

    const-string v10, ""

    :goto_10
    iput-object v10, v11, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->packName:Ljava/lang/String;

    goto/16 :goto_0

    .line 96
    .end local v1    # "connectMgr":Landroid/net/ConnectivityManager;
    .end local v3    # "info":Landroid/net/NetworkInfo;
    .end local v6    # "sp":Landroid/content/SharedPreferences;
    .end local v7    # "time":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v2

    .line 97
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 111
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v6    # "sp":Landroid/content/SharedPreferences;
    .restart local v7    # "time":Ljava/text/SimpleDateFormat;
    :cond_8
    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    const-string v11, "reg_time"

    const-string v12, ""

    invoke-interface {v6, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->regTime:Ljava/lang/String;

    goto/16 :goto_2

    .line 119
    :catch_1
    move-exception v2

    .line 120
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 130
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "connectMgr":Landroid/net/ConnectivityManager;
    .restart local v3    # "info":Landroid/net/NetworkInfo;
    :cond_9
    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    const/4 v11, 0x2

    iput v11, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->netType:I

    goto/16 :goto_4

    .line 136
    :cond_a
    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    iget-object v10, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->version:Ljava/lang/String;

    goto/16 :goto_5

    .line 137
    :cond_b
    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    iget-object v10, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->imsi:Ljava/lang/String;

    goto/16 :goto_6

    .line 138
    :cond_c
    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    iget-object v10, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->imei:Ljava/lang/String;

    goto/16 :goto_7

    .line 139
    :cond_d
    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    iget-object v10, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->iccid:Ljava/lang/String;

    goto/16 :goto_8

    .line 140
    :cond_e
    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    iget-object v10, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->mac:Ljava/lang/String;

    goto/16 :goto_9

    .line 141
    :cond_f
    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    iget-object v10, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->model:Ljava/lang/String;

    goto/16 :goto_a

    .line 142
    :cond_10
    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    iget-object v10, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->userId:Ljava/lang/String;

    goto/16 :goto_b

    .line 143
    :cond_11
    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    iget-object v10, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->manufacturer:Ljava/lang/String;

    goto/16 :goto_c

    .line 144
    :cond_12
    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    iget-object v10, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->osVersion:Ljava/lang/String;

    goto :goto_d

    .line 145
    :cond_13
    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    iget-object v10, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->kernelVersion:Ljava/lang/String;

    goto :goto_e

    .line 146
    :cond_14
    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    iget-object v10, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->regTime:Ljava/lang/String;

    goto :goto_f

    .line 147
    :cond_15
    sget-object v10, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    iget-object v10, v10, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->packName:Ljava/lang/String;

    goto :goto_10
.end method

.method public static setServerTime(Ljava/lang/String;)V
    .locals 4
    .param p0, "serverTime"    # Ljava/lang/String;

    .prologue
    .line 207
    sget-object v1, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    iget-object v1, v1, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->regTime:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 208
    sget-object v1, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    iput-object p0, v1, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->regTime:Ljava/lang/String;

    .line 209
    sget-object v1, Lcom/shunpay210/sdk/LocalInfo210;->m_context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 210
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "reg_time"

    sget-object v3, Lcom/shunpay210/sdk/LocalInfo210;->m_localInfo:Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    iget-object v3, v3, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->regTime:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 212
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method
