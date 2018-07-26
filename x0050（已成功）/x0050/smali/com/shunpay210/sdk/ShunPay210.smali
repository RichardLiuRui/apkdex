.class public Lcom/shunpay210/sdk/ShunPay210;
.super Ljava/lang/Object;
.source "ShunPay210.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shunpay210/sdk/ShunPay210$LoginListener;,
        Lcom/shunpay210/sdk/ShunPay210$PayListener;,
        Lcom/shunpay210/sdk/ShunPay210$PayPrepareListener;
    }
.end annotation


# static fields
.field private static m_isInit:Z

.field private static m_itemId:I

.field private static m_loginHandler:Landroid/os/Handler;

.field private static m_loginListener:Lcom/shunpay210/sdk/ShunPay210$LoginListener;

.field private static m_payResultHandler:Landroid/os/Handler;

.field private static m_payResultListener:Lcom/shunpay210/sdk/ShunPay210$PayListener;

.field private static m_prepareListener:Lcom/shunpay210/sdk/ShunPay210$PayPrepareListener;

.field private static m_price:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 17
    sput-object v1, Lcom/shunpay210/sdk/ShunPay210;->m_payResultListener:Lcom/shunpay210/sdk/ShunPay210$PayListener;

    .line 18
    sput-object v1, Lcom/shunpay210/sdk/ShunPay210;->m_loginListener:Lcom/shunpay210/sdk/ShunPay210$LoginListener;

    .line 19
    sput-boolean v0, Lcom/shunpay210/sdk/ShunPay210;->m_isInit:Z

    .line 20
    sput-object v1, Lcom/shunpay210/sdk/ShunPay210;->m_prepareListener:Lcom/shunpay210/sdk/ShunPay210$PayPrepareListener;

    .line 21
    sput v0, Lcom/shunpay210/sdk/ShunPay210;->m_itemId:I

    .line 22
    sput v0, Lcom/shunpay210/sdk/ShunPay210;->m_price:I

    .line 207
    new-instance v0, Lcom/shunpay210/sdk/ShunPay210$1;

    invoke-direct {v0}, Lcom/shunpay210/sdk/ShunPay210$1;-><init>()V

    sput-object v0, Lcom/shunpay210/sdk/ShunPay210;->m_payResultHandler:Landroid/os/Handler;

    .line 222
    new-instance v0, Lcom/shunpay210/sdk/ShunPay210$2;

    invoke-direct {v0}, Lcom/shunpay210/sdk/ShunPay210$2;-><init>()V

    sput-object v0, Lcom/shunpay210/sdk/ShunPay210;->m_loginHandler:Landroid/os/Handler;

    .line 229
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lcom/shunpay210/sdk/ShunPay210$PayListener;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/shunpay210/sdk/ShunPay210;->m_payResultListener:Lcom/shunpay210/sdk/ShunPay210$PayListener;

    return-object v0
.end method

.method static synthetic access$1()Lcom/shunpay210/sdk/ShunPay210$LoginListener;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/shunpay210/sdk/ShunPay210;->m_loginListener:Lcom/shunpay210/sdk/ShunPay210$LoginListener;

    return-object v0
.end method

.method static synthetic access$2()Lcom/shunpay210/sdk/ShunPay210$PayPrepareListener;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/shunpay210/sdk/ShunPay210;->m_prepareListener:Lcom/shunpay210/sdk/ShunPay210$PayPrepareListener;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    invoke-static {}, Lcom/shunpay210/sdk/LocalInfo210;->getLocalInfo()Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    move-result-object v1

    .line 94
    .local v1, "localInfo":Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "packageNmae":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "shunpay_appid"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->appId:I

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "shunpay_channel"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->channel:Ljava/lang/String;

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "shunpay_sub_channel"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->subChannel:Ljava/lang/String;

    .line 98
    invoke-static {p0}, Lcom/shunpay210/sdk/ShunPay210;->realInit(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v2    # "packageNmae":Ljava/lang/String;
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # I
    .param p2, "channel"    # Ljava/lang/String;
    .param p3, "subChannel"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-static {}, Lcom/shunpay210/sdk/LocalInfo210;->getLocalInfo()Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    move-result-object v0

    .line 107
    .local v0, "localInfo":Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;
    iput p1, v0, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->appId:I

    .line 108
    iput-object p2, v0, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->channel:Ljava/lang/String;

    .line 109
    iput-object p3, v0, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->subChannel:Ljava/lang/String;

    .line 110
    invoke-static {p0}, Lcom/shunpay210/sdk/ShunPay210;->realInit(Landroid/content/Context;)V

    .line 111
    return-void
.end method

.method public static init(Landroid/content/Context;Lcom/shunpay210/sdk/ShunPay210$LoginListener;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/shunpay210/sdk/ShunPay210$LoginListener;
    .param p2, "appId"    # I
    .param p3, "channel"    # Ljava/lang/String;
    .param p4, "subChannel"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-static {}, Lcom/shunpay210/sdk/LocalInfo210;->getLocalInfo()Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    move-result-object v0

    .line 116
    .local v0, "localInfo":Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;
    iput p2, v0, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->appId:I

    .line 117
    iput-object p3, v0, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->channel:Ljava/lang/String;

    .line 118
    iput-object p4, v0, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->subChannel:Ljava/lang/String;

    .line 119
    sput-object p1, Lcom/shunpay210/sdk/ShunPay210;->m_loginListener:Lcom/shunpay210/sdk/ShunPay210$LoginListener;

    .line 120
    invoke-static {p0}, Lcom/shunpay210/sdk/ShunPay210;->realInit(Landroid/content/Context;)V

    .line 121
    return-void
.end method

.method public static onExit()V
    .locals 0

    .prologue
    .line 238
    return-void
.end method

.method public static onLoginResult(I)V
    .locals 1
    .param p0, "result"    # I

    .prologue
    .line 232
    sget-object v0, Lcom/shunpay210/sdk/ShunPay210;->m_loginHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 233
    return-void
.end method

.method public static onPayResult(I)V
    .locals 1
    .param p0, "result"    # I

    .prologue
    .line 218
    sget-object v0, Lcom/shunpay210/sdk/ShunPay210;->m_payResultHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 219
    return-void
.end method

.method public static onThirdPayResult(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p0, "sdkName"    # Ljava/lang/String;
    .param p1, "payment"    # I
    .param p2, "result"    # I
    .param p3, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 204
    invoke-static {p0, p1, p2, p3}, Lcom/shunpay210/sdk/CppAdapter210;->onThirdPayResult(Ljava/lang/String;IILjava/lang/String;)V

    .line 205
    return-void
.end method

.method public static pay(Landroid/app/Activity;IILcom/shunpay210/sdk/ShunPay210$PayListener;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "itemId"    # I
    .param p2, "price"    # I
    .param p3, "listener"    # Lcom/shunpay210/sdk/ShunPay210$PayListener;

    .prologue
    .line 151
    sget-boolean v0, Lcom/shunpay210/sdk/ShunPay210;->m_isInit:Z

    if-nez v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 155
    :cond_0
    sput-object p3, Lcom/shunpay210/sdk/ShunPay210;->m_payResultListener:Lcom/shunpay210/sdk/ShunPay210$PayListener;

    .line 156
    invoke-static {}, Lcom/shunpay210/sdk/CppAdapter210;->needConfirm()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 157
    invoke-static {p0, p1, p2}, Lcom/shunpay210/sdk/ShunPay210;->showConfirmDlg(Landroid/content/Context;II)V

    goto :goto_0

    .line 159
    :cond_1
    invoke-static {p1, p2}, Lcom/shunpay210/sdk/CppAdapter210;->pay(II)V

    goto :goto_0
.end method

.method public static pay(Lcom/shunpay210/sdk/ShunPay210$PayListener;)V
    .locals 2
    .param p0, "listener"    # Lcom/shunpay210/sdk/ShunPay210$PayListener;

    .prologue
    .line 180
    sget-boolean v0, Lcom/shunpay210/sdk/ShunPay210;->m_isInit:Z

    if-nez v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 183
    :cond_0
    sput-object p0, Lcom/shunpay210/sdk/ShunPay210;->m_payResultListener:Lcom/shunpay210/sdk/ShunPay210$PayListener;

    .line 184
    sget v0, Lcom/shunpay210/sdk/ShunPay210;->m_itemId:I

    sget v1, Lcom/shunpay210/sdk/ShunPay210;->m_price:I

    invoke-static {v0, v1}, Lcom/shunpay210/sdk/CppAdapter210;->pay(II)V

    goto :goto_0
.end method

.method public static prepare(Landroid/content/Context;IILcom/shunpay210/sdk/ShunPay210$PayPrepareListener;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "itemId"    # I
    .param p2, "price"    # I
    .param p3, "listener"    # Lcom/shunpay210/sdk/ShunPay210$PayPrepareListener;

    .prologue
    .line 188
    sget-boolean v0, Lcom/shunpay210/sdk/ShunPay210;->m_isInit:Z

    if-nez v0, :cond_0

    .line 201
    :goto_0
    return-void

    .line 192
    :cond_0
    sput p1, Lcom/shunpay210/sdk/ShunPay210;->m_itemId:I

    .line 193
    sput p2, Lcom/shunpay210/sdk/ShunPay210;->m_price:I

    .line 195
    sput-object p3, Lcom/shunpay210/sdk/ShunPay210;->m_prepareListener:Lcom/shunpay210/sdk/ShunPay210$PayPrepareListener;

    .line 196
    invoke-static {}, Lcom/shunpay210/sdk/CppAdapter210;->needConfirm()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 197
    invoke-static {p0, p1, p2}, Lcom/shunpay210/sdk/ShunPay210;->showConfirmDlg(Landroid/content/Context;II)V

    goto :goto_0

    .line 199
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Lcom/shunpay210/sdk/ShunPay210$PayPrepareListener;->onPreparePay(Z)V

    goto :goto_0
.end method

.method public static realInit(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    sget-boolean v1, Lcom/shunpay210/sdk/ShunPay210;->m_isInit:Z

    if-eqz v1, :cond_0

    .line 88
    :goto_0
    return-void

    .line 63
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/shunpay210/sdk/ShunPay210;->m_isInit:Z

    .line 64
    const-string v1, "shunpay"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 67
    invoke-static {p0}, Lcom/shunpay210/sdk/LocalInfo210;->initLocalInfo(Landroid/content/Context;)V

    .line 68
    invoke-static {}, Lcom/shunpay210/sdk/LocalInfo210;->getLocalInfo()Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    move-result-object v0

    .line 70
    .local v0, "localInfo":Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;
    invoke-static {p0, v0}, Lcom/shunpay210/sdk/CppAdapter210;->init(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    invoke-static {}, Lcom/shunpay210/sdk/SMS210;->getInstance()Lcom/shunpay210/sdk/SMS210;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/shunpay210/sdk/SMS210;->init(Landroid/content/Context;)V

    .line 73
    invoke-static {}, Lcom/shunpay210/sdk/SMS210;->getInstance()Lcom/shunpay210/sdk/SMS210;

    move-result-object v1

    new-instance v2, Lcom/shunpay210/sdk/ShunPay210$3;

    invoke-direct {v2}, Lcom/shunpay210/sdk/ShunPay210$3;-><init>()V

    invoke-virtual {v1, v2}, Lcom/shunpay210/sdk/SMS210;->setListener(Lcom/shunpay210/sdk/SMS210$SmsListener;)V

    goto :goto_0
.end method

.method public static setVersion(Ljava/lang/String;)V
    .locals 1
    .param p0, "version"    # Ljava/lang/String;

    .prologue
    .line 175
    invoke-static {}, Lcom/shunpay210/sdk/LocalInfo210;->getLocalInfo()Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;

    move-result-object v0

    .line 176
    .local v0, "localInfo":Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;
    iput-object p0, v0, Lcom/shunpay210/sdk/LocalInfo210$LOCAL_INFO;->version:Ljava/lang/String;

    .line 177
    return-void
.end method

.method private static showConfirmDlg(Landroid/content/Context;II)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "itemId"    # I
    .param p2, "price"    # I

    .prologue
    .line 126
    const/16 v3, 0x3e8

    if-le p2, v3, :cond_0

    :try_start_0
    div-int/lit8 v2, p2, 0x64

    .line 127
    .local v2, "price2":I
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 128
    .local v0, "confirmDlg":Landroid/app/AlertDialog$Builder;
    const-string v3, "\u652f\u4ed8\u786e\u8ba4"

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u672c\u6b21\u652f\u4ed8"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u5143\uff0c\u4f60\u786e\u5b9a\u8981\u4ed8\u8d39\u5417\uff1f\u5ba2\u670d\u7535\u8bdd:0571-86291775"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 130
    const-string v3, "\u786e\u5b9a"

    new-instance v4, Lcom/shunpay210/sdk/ShunPay210$4;

    invoke-direct {v4, p1, p2}, Lcom/shunpay210/sdk/ShunPay210$4;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 140
    const-string v3, "\u53d6\u6d88"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 141
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v0    # "confirmDlg":Landroid/app/AlertDialog$Builder;
    .end local v2    # "price2":I
    :goto_1
    return-void

    :cond_0
    move v2, p2

    .line 126
    goto :goto_0

    .line 142
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/shunpay210/sdk/ShunPay210;->m_prepareListener:Lcom/shunpay210/sdk/ShunPay210$PayPrepareListener;

    if-nez v3, :cond_1

    .line 144
    invoke-static {p1, p2}, Lcom/shunpay210/sdk/CppAdapter210;->pay(II)V

    goto :goto_1

    .line 146
    :cond_1
    sget-object v3, Lcom/shunpay210/sdk/ShunPay210;->m_prepareListener:Lcom/shunpay210/sdk/ShunPay210$PayPrepareListener;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/shunpay210/sdk/ShunPay210$PayPrepareListener;->onPreparePay(Z)V

    goto :goto_1
.end method

.method public static test()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 164
    sget-boolean v0, Lcom/shunpay210/sdk/ShunPay210;->m_isInit:Z

    if-nez v0, :cond_0

    .line 172
    :goto_0
    return-void

    .line 168
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/shunpay210/sdk/CppAdapter210;->onSendSMSResult(I)V

    .line 169
    const-string v0, "10086"

    const-string v1, "hello,world!"

    invoke-static {v0, v1}, Lcom/shunpay210/sdk/CppAdapter210;->onSMSReceived(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v0, "1"

    const-string v1, "000"

    invoke-static {v0, v2, v2, v1}, Lcom/shunpay210/sdk/CppAdapter210;->onThirdPayResult(Ljava/lang/String;IILjava/lang/String;)V

    .line 171
    invoke-static {}, Lcom/shunpay210/sdk/CppAdapter210;->testJavaFuncs()V

    goto :goto_0
.end method
