.class Lorg/zzf/core/ui/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic a:Lorg/zzf/core/ui/c;


# direct methods
.method constructor <init>(Lorg/zzf/core/ui/c;)V
    .locals 0

    iput-object p1, p0, Lorg/zzf/core/ui/d;->a:Lorg/zzf/core/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lorg/zzf/core/ui/d;->a:Lorg/zzf/core/ui/c;

    iget-object v0, v0, Lorg/zzf/core/ui/c;->a:Landroid/view/View;

    check-cast v0, Lorg/zzf/core/ui/ShimmerViewBase;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/zzf/core/ui/ShimmerViewBase;->setShimmering(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/zzf/core/ui/d;->a:Lorg/zzf/core/ui/c;

    iget-object v0, v0, Lorg/zzf/core/ui/c;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    :goto_0
    iget-object v0, p0, Lorg/zzf/core/ui/d;->a:Lorg/zzf/core/ui/c;

    iget-object v0, v0, Lorg/zzf/core/ui/c;->b:Lorg/zzf/core/ui/Shimmer;

    const/4 v1, 0x0

    # setter for: Lorg/zzf/core/ui/Shimmer;->animator:Landroid/animation/ObjectAnimator;
    invoke-static {v0, v1}, Lorg/zzf/core/ui/Shimmer;->access$102(Lorg/zzf/core/ui/Shimmer;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    return-void

    :cond_0
    iget-object v0, p0, Lorg/zzf/core/ui/d;->a:Lorg/zzf/core/ui/c;

    iget-object v0, v0, Lorg/zzf/core/ui/c;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidateOnAnimation()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
