.class Lorg/zzf/core/ui/e;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/zzf/core/ui/f;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lorg/zzf/core/ui/Shimmer;


# direct methods
.method constructor <init>(Lorg/zzf/core/ui/Shimmer;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/zzf/core/ui/e;->b:Lorg/zzf/core/ui/Shimmer;

    iput-object p2, p0, Lorg/zzf/core/ui/e;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/zzf/core/ui/e;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
