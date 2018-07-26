.class public Lcom/zy/hez/c/a;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroid/content/Context;)Landroid/content/pm/PackageManager;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    :try_start_0
    invoke-static {p0}, Lcom/zy/hez/c/a;->a(Landroid/content/Context;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/zy/hez/c/c;->a()Ljava/lang/String;

    invoke-static {}, Lcom/zy/hez/c/d;->a()Ljava/lang/String;

    const/4 v0, 0x0

    goto :goto_0
.end method
