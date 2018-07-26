.class public Lcom/union/sdk/UnionPayApplication;
.super Landroid/app/Application;
.source "UnionPayApplication.java"


# instance fields
.field m_loginListener:Lcom/shunpay210/sdk/ShunPay210$LoginListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 65
    new-instance v0, Lcom/union/sdk/UnionPayApplication$1;

    invoke-direct {v0, p0}, Lcom/union/sdk/UnionPayApplication$1;-><init>(Lcom/union/sdk/UnionPayApplication;)V

    iput-object v0, p0, Lcom/union/sdk/UnionPayApplication;->m_loginListener:Lcom/shunpay210/sdk/ShunPay210$LoginListener;

    .line 16
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 9

    .prologue
    .line 19
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 22
    :try_start_0
    invoke-virtual {p0}, Lcom/union/sdk/UnionPayApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/union/sdk/UnionPayApplication;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 23
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "CHANNEL"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 24
    .local v1, "channel":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "temp_game_channel"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 25
    sput-object v1, Lcom/union/sdk/UnionPay;->CHANNEL:Ljava/lang/String;

    .line 28
    :cond_0
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "SUB_CHANNEL"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 29
    .local v3, "sub_channel":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "temp_game_sub_channel"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 30
    sput-object v3, Lcom/union/sdk/UnionPay;->SUB_CHANNEL:Ljava/lang/String;

    .line 33
    :cond_1
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "VERSION"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 34
    .local v4, "version":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "temp_game_version"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 35
    sput-object v4, Lcom/union/sdk/UnionPay;->VERSION:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "channel":Ljava/lang/String;
    .end local v3    # "sub_channel":Ljava/lang/String;
    .end local v4    # "version":Ljava/lang/String;
    :cond_2
    :goto_0
    const/16 v5, 0x572

    sget-object v6, Lcom/union/sdk/UnionPay;->CHANNEL:Ljava/lang/String;

    invoke-static {p0, v5, v6}, Lbn/sdk/szwcsss/common/y/winit;->initCustomChannel(Landroid/app/Application;ILjava/lang/String;)V

    .line 61
    sget-object v5, Lcom/union/sdk/UnionPay;->VERSION:Ljava/lang/String;

    invoke-static {v5}, Lcom/shunpay210/sdk/ShunPay210;->setVersion(Ljava/lang/String;)V

    .line 62
    iget-object v5, p0, Lcom/union/sdk/UnionPayApplication;->m_loginListener:Lcom/shunpay210/sdk/ShunPay210$LoginListener;

    const/16 v6, 0x519

    sget-object v7, Lcom/union/sdk/UnionPay;->CHANNEL:Ljava/lang/String;

    sget-object v8, Lcom/union/sdk/UnionPay;->SUB_CHANNEL:Ljava/lang/String;

    invoke-static {p0, v5, v6, v7, v8}, Lcom/shunpay210/sdk/ShunPay210;->init(Landroid/content/Context;Lcom/shunpay210/sdk/ShunPay210$LoginListener;ILjava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void

    .line 37
    :catch_0
    move-exception v2

    .line 38
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
