.class public Lcom/dataeye/c/p;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/util/Map;

.field private static b:Lcom/dataeye/c/aa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/dataeye/c/p;->b:Lcom/dataeye/c/aa;

    sput-object v0, Lcom/dataeye/c/p;->a:Ljava/util/Map;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    const-string v0, "DC_ETAG"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/dataeye/c/z;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/dataeye/a/d;)V
    .locals 3

    const-string v0, "DC_ETAG"

    iget-object v1, p0, Lcom/dataeye/a/d;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/dataeye/c/z;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnlineConfig update success, new tag = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dataeye/a/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dataeye/c/u;->a(Ljava/lang/String;)V

    const-string v0, "DC_CONFIGPARAMS"

    invoke-virtual {p0}, Lcom/dataeye/a/d;->a()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dataeye/c/z;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/dataeye/c/p;->b()V

    return-void
.end method

.method public static a(Lcom/dataeye/c/aa;)V
    .locals 0

    sput-object p0, Lcom/dataeye/c/p;->b:Lcom/dataeye/c/aa;

    return-void
.end method

.method public static a(ZLcom/dataeye/ConfigParamsUpdateListener;)V
    .locals 2

    invoke-static {}, Lcom/dataeye/c/h;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/dataeye/c/q;

    invoke-direct {v1, p0, p1}, Lcom/dataeye/c/q;-><init>(ZLcom/dataeye/ConfigParamsUpdateListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-boolean v0, Lcom/dataeye/c/b;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "DCConfigParams_update"

    invoke-static {v0}, Lcom/dataeye/c/t;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static b()V
    .locals 3

    :try_start_0
    const-string v0, "DC_CONFIGPARAMS"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/dataeye/c/z;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    new-instance v1, Lcom/dataeye/b/c;

    invoke-direct {v1, v0}, Lcom/dataeye/b/c;-><init>([B)V

    new-instance v0, Lcom/dataeye/a/d;

    invoke-direct {v0}, Lcom/dataeye/a/d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/dataeye/a/d;->a(Lcom/dataeye/b/c;)V

    iget-object v0, v0, Lcom/dataeye/a/d;->b:Ljava/util/Map;

    sput-object v0, Lcom/dataeye/c/p;->a:Ljava/util/Map;

    :cond_0
    invoke-static {}, Lcom/dataeye/c/ac;->i()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DCconfigParams init error , reason:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dataeye/c/u;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic c()Lcom/dataeye/c/aa;
    .locals 1

    sget-object v0, Lcom/dataeye/c/p;->b:Lcom/dataeye/c/aa;

    return-object v0
.end method
