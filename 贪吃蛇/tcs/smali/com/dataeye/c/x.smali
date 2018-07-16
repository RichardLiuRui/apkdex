.class public Lcom/dataeye/c/x;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Lcom/dataeye/a/f;

.field private static final f:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    sput-boolean v2, Lcom/dataeye/c/x;->a:Z

    const-string v0, ""

    sput-object v0, Lcom/dataeye/c/x;->b:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/dataeye/c/x;->c:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/dataeye/c/x;->d:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/dataeye/c/x;->e:Lcom/dataeye/a/f;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v1, v0, v2

    sput-object v0, Lcom/dataeye/c/x;->f:[Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/dataeye/a/f;

    invoke-direct {v0}, Lcom/dataeye/a/f;-><init>()V

    sput-object v0, Lcom/dataeye/c/x;->e:Lcom/dataeye/a/f;

    sget-boolean v0, Lcom/dataeye/c/b;->j:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/dataeye/c/x;->e:Lcom/dataeye/a/f;

    const-string v1, ""

    iput-object v1, v0, Lcom/dataeye/a/f;->a:Ljava/lang/String;

    sget-object v0, Lcom/dataeye/c/x;->e:Lcom/dataeye/a/f;

    const-string v1, ""

    iput-object v1, v0, Lcom/dataeye/a/f;->b:Ljava/lang/String;

    sget-object v0, Lcom/dataeye/c/x;->e:Lcom/dataeye/a/f;

    const-string v1, ""

    iput-object v1, v0, Lcom/dataeye/a/f;->o:Ljava/lang/String;

    :goto_0
    sget-object v0, Lcom/dataeye/c/x;->e:Lcom/dataeye/a/f;

    invoke-static {}, Lcom/dataeye/c/a;->j()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dataeye/a/f;->c:Ljava/lang/String;

    sget-object v0, Lcom/dataeye/c/x;->e:Lcom/dataeye/a/f;

    invoke-static {}, Lcom/dataeye/c/ac;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dataeye/a/f;->d:Ljava/lang/String;

    sget-object v0, Lcom/dataeye/c/x;->e:Lcom/dataeye/a/f;

    invoke-static {}, Lcom/dataeye/c/ac;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dataeye/a/f;->e:Ljava/lang/String;

    sget-object v0, Lcom/dataeye/c/x;->e:Lcom/dataeye/a/f;

    invoke-static {}, Lcom/dataeye/c/ac;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dataeye/a/f;->f:Ljava/lang/String;

    sget-object v0, Lcom/dataeye/c/x;->e:Lcom/dataeye/a/f;

    invoke-static {}, Lcom/dataeye/c/ac;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dataeye/a/f;->g:Ljava/lang/String;

    sget-object v0, Lcom/dataeye/c/x;->e:Lcom/dataeye/a/f;

    invoke-static {}, Lcom/dataeye/c/ac;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dataeye/a/f;->h:Ljava/lang/String;

    sget-object v0, Lcom/dataeye/c/x;->e:Lcom/dataeye/a/f;

    invoke-static {p0}, Lcom/dataeye/c/ac;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dataeye/a/f;->i:Ljava/lang/String;

    sget-object v0, Lcom/dataeye/c/x;->e:Lcom/dataeye/a/f;

    invoke-static {p0}, Lcom/dataeye/c/ac;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dataeye/a/f;->j:Ljava/lang/String;

    sget-object v0, Lcom/dataeye/c/x;->e:Lcom/dataeye/a/f;

    invoke-static {}, Lcom/dataeye/c/ac;->j()Z

    move-result v1

    iput-boolean v1, v0, Lcom/dataeye/a/f;->k:Z

    sget-object v0, Lcom/dataeye/c/x;->e:Lcom/dataeye/a/f;

    invoke-static {p0}, Lcom/dataeye/c/ac;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dataeye/a/f;->p:Ljava/lang/String;

    sget-object v0, Lcom/dataeye/c/x;->f:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/dataeye/c/ac;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ADR"

    const-string v1, "U3D"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/dataeye/c/af;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/dataeye/c/x;->e:Lcom/dataeye/a/f;

    aget-object v2, v0, v4

    iput-object v2, v1, Lcom/dataeye/a/f;->n:Ljava/lang/String;

    sget-object v1, Lcom/dataeye/c/x;->e:Lcom/dataeye/a/f;

    aget-object v0, v0, v5

    iput-object v0, v1, Lcom/dataeye/a/f;->m:Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/dataeye/c/x;->e:Lcom/dataeye/a/f;

    invoke-static {p0}, Lcom/dataeye/c/ac;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dataeye/a/f;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/dataeye/c/aj;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/dataeye/c/x;->e:Lcom/dataeye/a/f;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, v2, Lcom/dataeye/a/f;->b:Ljava/lang/String;

    sget-object v2, Lcom/dataeye/c/x;->e:Lcom/dataeye/a/f;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, v2, Lcom/dataeye/a/f;->o:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_1

    :cond_3
    const-string v0, ""

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sput-object p1, Lcom/dataeye/c/x;->c:Ljava/lang/String;

    sput-object p2, Lcom/dataeye/c/x;->d:Ljava/lang/String;

    :cond_0
    sget v0, Lcom/dataeye/c/b;->m:I

    if-eqz v0, :cond_2

    const-string v0, ""

    sget v1, Lcom/dataeye/c/b;->m:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    invoke-static {p0}, Lcom/dataeye/c/o;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sput-object v0, Lcom/dataeye/c/x;->d:Ljava/lang/String;

    :cond_2
    sget-object v0, Lcom/dataeye/c/x;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0}, Lcom/dataeye/c/x;->c(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/dataeye/c/x;->b(Landroid/content/Context;)V

    sget-object v0, Lcom/dataeye/c/x;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    sput-boolean v3, Lcom/dataeye/c/x;->a:Z

    const-string v0, "DataEye SDK init fail , Please check APPID in AndroidManifest.xml. "

    invoke-static {v0}, Lcom/dataeye/c/u;->c(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_3
    sget v1, Lcom/dataeye/c/b;->m:I

    if-ne v1, v4, :cond_1

    invoke-static {p0}, Lcom/dataeye/c/o;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/dataeye/c/x;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_5

    const-string v0, "Warning: maybe APPID configuration error , please check it!"

    invoke-static {v0}, Lcom/dataeye/c/u;->c(Ljava/lang/String;)V

    :cond_5
    sget-object v0, Lcom/dataeye/c/x;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p0}, Lcom/dataeye/c/x;->b(Landroid/content/Context;)V

    sget-object v0, Lcom/dataeye/c/x;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    sput-boolean v3, Lcom/dataeye/c/x;->a:Z

    const-string v0, "DataEye SDK init fail , Please check CHANNELID in AndroidManifest.xml. "

    invoke-static {v0}, Lcom/dataeye/c/u;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/dataeye/c/h;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/dataeye/c/y;

    invoke-direct {v1, p0}, Lcom/dataeye/c/y;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sput-boolean v4, Lcom/dataeye/c/x;->a:Z

    const-string v0, "DCProject init successful!"

    invoke-static {v0}, Lcom/dataeye/c/u;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invoke DCProject.setVersionFromUser setVersion = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dataeye/c/u;->a(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DC_APPVERSION"

    invoke-static {v0, p0}, Lcom/dataeye/c/z;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/dataeye/c/b;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dataeye/c/ac;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dataeye/c/x;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    const-string v0, "DC_CHANNEL"

    invoke-static {p0, v0}, Lcom/dataeye/c/x;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    sput-object v0, Lcom/dataeye/c/x;->d:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    sput-object v0, Lcom/dataeye/c/x;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 1

    const-string v0, "DC_APPID"

    invoke-static {p0, v0}, Lcom/dataeye/c/x;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dataeye/c/x;->c:Ljava/lang/String;

    return-void
.end method
