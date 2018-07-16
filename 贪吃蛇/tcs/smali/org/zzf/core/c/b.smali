.class Lorg/zzf/core/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lorg/zzf/core/c/a;


# direct methods
.method constructor <init>(Lorg/zzf/core/c/a;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/zzf/core/c/b;->c:Lorg/zzf/core/c/a;

    iput-object p2, p0, Lorg/zzf/core/c/b;->a:Ljava/lang/String;

    iput-object p3, p0, Lorg/zzf/core/c/b;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lorg/zzf/core/c/b;->c:Lorg/zzf/core/c/a;

    iget-object v1, p0, Lorg/zzf/core/c/b;->a:Ljava/lang/String;

    iget-object v2, p0, Lorg/zzf/core/c/b;->b:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lorg/zzf/core/f/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    iget-object v3, p0, Lorg/zzf/core/c/b;->b:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lorg/zzf/core/f/o;->a(Ljava/lang/String;[Lorg/apache/http/Header;Landroid/content/Context;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/zzf/core/c/a;->a(Lorg/zzf/core/c/a;Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;

    iget-object v0, p0, Lorg/zzf/core/c/b;->c:Lorg/zzf/core/c/a;

    invoke-static {v0}, Lorg/zzf/core/c/a;->a(Lorg/zzf/core/c/a;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/c/b;->c:Lorg/zzf/core/c/a;

    invoke-static {v0}, Lorg/zzf/core/c/a;->a(Lorg/zzf/core/c/a;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/c/b;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lorg/zzf/core/f/o;->a(Lorg/apache/http/HttpResponse;Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
