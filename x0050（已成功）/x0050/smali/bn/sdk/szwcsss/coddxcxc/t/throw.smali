.class public Lbn/sdk/szwcsss/coddxcxc/t/throw;
.super Ljava/lang/Object;


# direct methods
.method public static b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static b(Landroid/content/Context;ILbn/sdk/szwcsss/coddxcxc/v/cx;Ljava/lang/String;Landroid/os/Handler;Ljava/util/HashMap;)Z
    .locals 4

    :try_start_0
    invoke-virtual {p2, p3}, Lbn/sdk/szwcsss/coddxcxc/v/cx;->b(Ljava/lang/String;)Lbn/sdk/szwcsss/coddxcxc/v/b;

    move-result-object v0

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/v/b;->cx()Ljava/lang/String;

    move-result-object v1

    const-string v0, "orderid"

    invoke-virtual {p5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lbn/sdk/szwcsss/coddxcxc/t/b;->b()Lbn/sdk/szwcsss/coddxcxc/t/b;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, p0, v3, p4}, Lbn/sdk/szwcsss/coddxcxc/t/b;->b(Landroid/content/Context;ILandroid/os/Handler;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WCKJPay order:mz:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "orderid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "WCKJPay order get exception"

    invoke-static {v1}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->for(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Landroid/os/Handler;)Z
    .locals 2

    const-string v0, "WCKJPay init"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    invoke-static {}, Lbn/sdk/szwcsss/coddxcxc/t/b;->b()Lbn/sdk/szwcsss/coddxcxc/t/b;

    move-result-object v0

    invoke-static {p0}, Lbn/sdk/szwcsss/coddxcxc/x/while;->b(Landroid/content/Context;)Lbn/sdk/szwcsss/coddxcxc/x/while;

    move-result-object v1

    invoke-virtual {v1}, Lbn/sdk/szwcsss/coddxcxc/x/while;->aa()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lbn/sdk/szwcsss/coddxcxc/t/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
