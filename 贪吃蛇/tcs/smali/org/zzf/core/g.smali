.class Lorg/zzf/core/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lorg/zzf/core/a;


# direct methods
.method constructor <init>(Lorg/zzf/core/a;I)V
    .locals 0

    iput-object p1, p0, Lorg/zzf/core/g;->b:Lorg/zzf/core/a;

    iput p2, p0, Lorg/zzf/core/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lorg/zzf/core/g;->b:Lorg/zzf/core/a;

    iget-object v0, v0, Lorg/zzf/core/a;->a:Lorg/zzf/core/ZhangPayCallback;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ZhangPayCallback is null ? == \u56de\u8c03\u51fd\u6570\u4e0d\u80fd\u4e3a\u7a7a\u3002"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/zzf/core/g;->b:Lorg/zzf/core/a;

    iget-object v0, v0, Lorg/zzf/core/a;->a:Lorg/zzf/core/ZhangPayCallback;

    iget-object v1, p0, Lorg/zzf/core/g;->b:Lorg/zzf/core/a;

    invoke-static {v1}, Lorg/zzf/core/a;->a(Lorg/zzf/core/a;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lorg/zzf/core/g;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/zzf/core/ZhangPayCallback;->onZhangPayBuyProductFaild(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
