.class public Lbn/sdk/szwcsss/common/y/wy;
.super Landroid/app/Application;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 5

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const-string v0, " "

    :try_start_0
    invoke-virtual {p0}, Lbn/sdk/szwcsss/common/y/wy;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lbn/sdk/szwcsss/common/y/wy;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "WC_CID"

    invoke-static {v1, v2}, Lbn/sdk/szwcsss/coddxcxc/y/transient;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "cid is  null"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->cx(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "A"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CHANNELID_WC"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lbn/sdk/szwcsss/common/y/wyyp;->getInstance()Lbn/sdk/szwcsss/common/y/wyyp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbn/sdk/szwcsss/common/y/wyyp;->setAppInfo(Landroid/content/pm/ApplicationInfo;)V

    invoke-static {}, Lbn/sdk/szwcsss/coddxcxc/t/b;->b()Lbn/sdk/szwcsss/coddxcxc/t/b;

    move-result-object v1

    invoke-virtual {v1, p0}, Lbn/sdk/szwcsss/coddxcxc/t/b;->b(Landroid/content/Context;)V

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Landroid/content/pm/ApplicationInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZYXD_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->cx(Ljava/lang/String;)V

    const-string v0, "Init Data"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->cx(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "cid null"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->cx(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 0

    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    return-void
.end method
