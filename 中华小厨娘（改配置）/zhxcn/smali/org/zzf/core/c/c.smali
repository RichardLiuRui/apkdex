.class Lorg/zzf/core/c/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lorg/zzf/core/c/a;


# direct methods
.method constructor <init>(Lorg/zzf/core/c/a;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/zzf/core/c/c;->c:Lorg/zzf/core/c/a;

    iput-object p2, p0, Lorg/zzf/core/c/c;->a:Landroid/content/Context;

    iput-object p3, p0, Lorg/zzf/core/c/c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v0, 0x1f

    if-ge v1, v0, :cond_0

    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    iget-object v2, p0, Lorg/zzf/core/c/c;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lorg/zzf/core/b/h;->k(Landroid/content/Context;)I

    move-result v0

    const/16 v2, 0x3e9

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/zzf/core/c/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lorg/zzf/core/b/h;->z(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/zzf/core/c/c;->c:Lorg/zzf/core/c/a;

    iget-object v2, p0, Lorg/zzf/core/c/c;->b:Ljava/lang/String;

    iget-object v3, p0, Lorg/zzf/core/c/c;->a:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lorg/zzf/core/f/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v3

    iget-object v4, p0, Lorg/zzf/core/c/c;->a:Landroid/content/Context;

    invoke-static {v2, v3, v4}, Lorg/zzf/core/f/o;->a(Ljava/lang/String;[Lorg/apache/http/Header;Landroid/content/Context;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/zzf/core/c/a;->a(Lorg/zzf/core/c/a;Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;

    iget-object v0, p0, Lorg/zzf/core/c/c;->c:Lorg/zzf/core/c/a;

    invoke-static {v0}, Lorg/zzf/core/c/a;->a(Lorg/zzf/core/c/a;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/c/c;->c:Lorg/zzf/core/c/a;

    invoke-static {v0}, Lorg/zzf/core/c/a;->a(Lorg/zzf/core/c/a;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    iget-object v2, p0, Lorg/zzf/core/c/c;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lorg/zzf/core/f/o;->a(Lorg/apache/http/HttpResponse;Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
