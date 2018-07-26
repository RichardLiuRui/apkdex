.class public Lbn/sdk/szwcsss/coddxcxc/x/while;
.super Ljava/lang/Object;


# static fields
.field private static b:Lbn/sdk/szwcsss/coddxcxc/x/while;


# instance fields
.field private aa:Ljava/lang/String;

.field private cx:Ljava/lang/String;

.field private for:Landroid/content/Context;

.field private implements:Ljava/lang/String;

.field private instanceof:Ljava/lang/String;

.field private private:Ljava/lang/String;

.field private synchronized:Ljava/lang/String;

.field private throw:Ljava/lang/String;

.field private transient:Ljava/lang/String;

.field private while:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbn/sdk/szwcsss/coddxcxc/x/while;->for:Landroid/content/Context;

    const-string v0, ""

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/while;->cx:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/while;->aa:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/while;->while:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/while;->private:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/while;->transient:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/while;->implements:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/while;->instanceof:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/while;->synchronized:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/while;->throw:Ljava/lang/String;

    invoke-virtual {p0}, Lbn/sdk/szwcsss/coddxcxc/x/while;->throw()V

    invoke-direct {p0}, Lbn/sdk/szwcsss/coddxcxc/x/while;->while()V

    return-void
.end method

.method public static b(Landroid/content/Context;)Lbn/sdk/szwcsss/coddxcxc/x/while;
    .locals 1

    sget-object v0, Lbn/sdk/szwcsss/coddxcxc/x/while;->b:Lbn/sdk/szwcsss/coddxcxc/x/while;

    if-nez v0, :cond_0

    new-instance v0, Lbn/sdk/szwcsss/coddxcxc/x/while;

    invoke-direct {v0, p0}, Lbn/sdk/szwcsss/coddxcxc/x/while;-><init>(Landroid/content/Context;)V

    sput-object v0, Lbn/sdk/szwcsss/coddxcxc/x/while;->b:Lbn/sdk/szwcsss/coddxcxc/x/while;

    :cond_0
    sget-object v0, Lbn/sdk/szwcsss/coddxcxc/x/while;->b:Lbn/sdk/szwcsss/coddxcxc/x/while;

    return-object v0
.end method

.method private while()V
    .locals 2

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/while;->for:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/while;->throw:Ljava/lang/String;

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/while;->throw:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/while;->throw:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public aa()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/while;->while:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Lbn/sdk/szwcsss/coddxcxc/x/for;

    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/x/while;->for:Landroid/content/Context;

    invoke-direct {v0, v1}, Lbn/sdk/szwcsss/coddxcxc/x/for;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/x/for;->b()Lbn/sdk/szwcsss/coddxcxc/x/b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lbn/sdk/szwcsss/coddxcxc/x/b;->aa:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lbn/sdk/szwcsss/coddxcxc/x/b;->aa:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lbn/sdk/szwcsss/coddxcxc/x/b;->aa:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, v0, Lbn/sdk/szwcsss/coddxcxc/x/b;->while:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lbn/sdk/szwcsss/coddxcxc/x/b;->while:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lbn/sdk/szwcsss/coddxcxc/x/b;->while:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public cx()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/while;->throw:Ljava/lang/String;

    return-object v0
.end method

.method public for()Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Lbn/sdk/szwcsss/coddxcxc/x/for;

    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/x/while;->for:Landroid/content/Context;

    invoke-direct {v0, v1}, Lbn/sdk/szwcsss/coddxcxc/x/for;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/x/for;->b()Lbn/sdk/szwcsss/coddxcxc/x/b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lbn/sdk/szwcsss/coddxcxc/x/b;->throw:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lbn/sdk/szwcsss/coddxcxc/x/b;->throw:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lbn/sdk/szwcsss/coddxcxc/x/b;->throw:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, v0, Lbn/sdk/szwcsss/coddxcxc/x/b;->private:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lbn/sdk/szwcsss/coddxcxc/x/b;->private:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lbn/sdk/szwcsss/coddxcxc/x/b;->private:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public throw()V
    .locals 3

    :try_start_0
    invoke-static {}, Lbn/sdk/szwcsss/common/y/wyyp;->getInstance()Lbn/sdk/szwcsss/common/y/wyyp;

    move-result-object v0

    invoke-virtual {v0}, Lbn/sdk/szwcsss/common/y/wyyp;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/x/while;->while:Ljava/lang/String;

    invoke-static {v1}, Lbn/sdk/szwcsss/coddxcxc/y/private;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lbn/sdk/szwcsss/coddxcxc/x/cx;->b()Lbn/sdk/szwcsss/coddxcxc/x/cx;

    move-result-object v1

    invoke-virtual {v1}, Lbn/sdk/szwcsss/coddxcxc/x/cx;->aa()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/x/while;->while:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PayCtrl init PayChannelService yycid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbn/sdk/szwcsss/coddxcxc/x/while;->while:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/x/while;->while:Ljava/lang/String;

    invoke-static {v1}, Lbn/sdk/szwcsss/coddxcxc/y/private;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "CHANNELID_WC"

    invoke-static {v0, v1}, Lbn/sdk/szwcsss/coddxcxc/y/transient;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/while;->while:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PayCtrl init getBundleObject yycid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/x/while;->while:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lbn/sdk/szwcsss/coddxcxc/x/while;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/while;->cx:Ljava/lang/String;

    invoke-virtual {p0}, Lbn/sdk/szwcsss/coddxcxc/x/while;->for()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/while;->cx:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "PayCtrl init"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->cx(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "yy_cid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/x/while;->while:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->cx(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
