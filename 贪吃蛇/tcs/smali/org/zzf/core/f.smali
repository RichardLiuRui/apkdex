.class Lorg/zzf/core/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/zzf/core/a;


# direct methods
.method constructor <init>(Lorg/zzf/core/a;)V
    .locals 0

    iput-object p1, p0, Lorg/zzf/core/f;->a:Lorg/zzf/core/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/zzf/core/f;->a:Lorg/zzf/core/a;

    iget-object v0, v0, Lorg/zzf/core/a;->a:Lorg/zzf/core/ZhangPayCallback;

    iget-object v1, p0, Lorg/zzf/core/f;->a:Lorg/zzf/core/a;

    invoke-static {v1}, Lorg/zzf/core/a;->a(Lorg/zzf/core/a;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1001"

    invoke-interface {v0, v1, v2}, Lorg/zzf/core/ZhangPayCallback;->onZhangPayBuyProductOK(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
