.class public Lcom/boJUF/mB/mB/VD/mB/oC;
.super Ljava/lang/Object;


# static fields
.field private static volatile LA:Lcom/boJUF/mB/mB/mB/XQ;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/mB/XQ;
    .locals 2

    sget-object v0, Lcom/boJUF/mB/mB/VD/mB/oC;->LA:Lcom/boJUF/mB/mB/mB/XQ;

    if-nez v0, :cond_1

    const-class v1, Lcom/boJUF/mB/mB/VD/mB/oC;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/boJUF/mB/mB/VD/mB/oC;->LA:Lcom/boJUF/mB/mB/mB/XQ;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/boJUF/mB/mB/VD/mB/oC;->cp(Landroid/content/Context;)Lcom/boJUF/mB/mB/mB/XQ;

    move-result-object v0

    sput-object v0, Lcom/boJUF/mB/mB/VD/mB/oC;->LA:Lcom/boJUF/mB/mB/mB/XQ;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/boJUF/mB/mB/VD/mB/oC;->LA:Lcom/boJUF/mB/mB/mB/XQ;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static cp(Landroid/content/Context;)Lcom/boJUF/mB/mB/mB/XQ;
    .locals 7

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    new-instance v3, Lcom/boJUF/mB/mB/mB/XQ;

    invoke-direct {v3}, Lcom/boJUF/mB/mB/mB/XQ;-><init>()V

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget v4, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_1

    :cond_0
    const-string v1, ""

    :cond_1
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v6}, Lcom/boJUF/mB/mB/mB/XQ;->LA(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/boJUF/mB/mB/mB/XQ;->cp(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/boJUF/mB/mB/mB/XQ;->On(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/boJUF/mB/mB/mB/XQ;->LA(I)V

    invoke-virtual {v3, v0}, Lcom/boJUF/mB/mB/mB/XQ;->LA(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-object v3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
