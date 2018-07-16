.class Lorg/zzf/core/ui/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lorg/zzf/core/ui/Shimmer;


# direct methods
.method constructor <init>(Lorg/zzf/core/ui/Shimmer;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lorg/zzf/core/ui/c;->b:Lorg/zzf/core/ui/Shimmer;

    iput-object p2, p0, Lorg/zzf/core/ui/c;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v1, 0x0

    const/4 v7, 0x1

    iget-object v0, p0, Lorg/zzf/core/ui/c;->a:Landroid/view/View;

    check-cast v0, Lorg/zzf/core/ui/ShimmerViewBase;

    invoke-interface {v0, v7}, Lorg/zzf/core/ui/ShimmerViewBase;->setShimmering(Z)V

    iget-object v0, p0, Lorg/zzf/core/ui/c;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lorg/zzf/core/ui/c;->b:Lorg/zzf/core/ui/Shimmer;

    # getter for: Lorg/zzf/core/ui/Shimmer;->direction:I
    invoke-static {v2}, Lorg/zzf/core/ui/Shimmer;->access$000(Lorg/zzf/core/ui/Shimmer;)I

    move-result v2

    if-ne v2, v7, :cond_0

    iget-object v0, p0, Lorg/zzf/core/ui/c;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    move v8, v1

    move v1, v0

    move v0, v8

    :cond_0
    iget-object v2, p0, Lorg/zzf/core/ui/c;->b:Lorg/zzf/core/ui/Shimmer;

    iget-object v3, p0, Lorg/zzf/core/ui/c;->a:Landroid/view/View;

    const-string v4, "gradientX"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v1, v5, v6

    aput v0, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    # setter for: Lorg/zzf/core/ui/Shimmer;->animator:Landroid/animation/ObjectAnimator;
    invoke-static {v2, v0}, Lorg/zzf/core/ui/Shimmer;->access$102(Lorg/zzf/core/ui/Shimmer;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lorg/zzf/core/ui/c;->b:Lorg/zzf/core/ui/Shimmer;

    # getter for: Lorg/zzf/core/ui/Shimmer;->animator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lorg/zzf/core/ui/Shimmer;->access$100(Lorg/zzf/core/ui/Shimmer;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/ui/c;->b:Lorg/zzf/core/ui/Shimmer;

    # getter for: Lorg/zzf/core/ui/Shimmer;->repeatCount:I
    invoke-static {v1}, Lorg/zzf/core/ui/Shimmer;->access$200(Lorg/zzf/core/ui/Shimmer;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lorg/zzf/core/ui/c;->b:Lorg/zzf/core/ui/Shimmer;

    # getter for: Lorg/zzf/core/ui/Shimmer;->animator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lorg/zzf/core/ui/Shimmer;->access$100(Lorg/zzf/core/ui/Shimmer;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/ui/c;->b:Lorg/zzf/core/ui/Shimmer;

    # getter for: Lorg/zzf/core/ui/Shimmer;->duration:J
    invoke-static {v1}, Lorg/zzf/core/ui/Shimmer;->access$300(Lorg/zzf/core/ui/Shimmer;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lorg/zzf/core/ui/c;->b:Lorg/zzf/core/ui/Shimmer;

    # getter for: Lorg/zzf/core/ui/Shimmer;->animator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lorg/zzf/core/ui/Shimmer;->access$100(Lorg/zzf/core/ui/Shimmer;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/ui/c;->b:Lorg/zzf/core/ui/Shimmer;

    # getter for: Lorg/zzf/core/ui/Shimmer;->startDelay:J
    invoke-static {v1}, Lorg/zzf/core/ui/Shimmer;->access$400(Lorg/zzf/core/ui/Shimmer;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lorg/zzf/core/ui/c;->b:Lorg/zzf/core/ui/Shimmer;

    # getter for: Lorg/zzf/core/ui/Shimmer;->animator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lorg/zzf/core/ui/Shimmer;->access$100(Lorg/zzf/core/ui/Shimmer;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lorg/zzf/core/ui/d;

    invoke-direct {v1, p0}, Lorg/zzf/core/ui/d;-><init>(Lorg/zzf/core/ui/c;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/zzf/core/ui/c;->b:Lorg/zzf/core/ui/Shimmer;

    # getter for: Lorg/zzf/core/ui/Shimmer;->animatorListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v0}, Lorg/zzf/core/ui/Shimmer;->access$500(Lorg/zzf/core/ui/Shimmer;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/zzf/core/ui/c;->b:Lorg/zzf/core/ui/Shimmer;

    # getter for: Lorg/zzf/core/ui/Shimmer;->animator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lorg/zzf/core/ui/Shimmer;->access$100(Lorg/zzf/core/ui/Shimmer;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/ui/c;->b:Lorg/zzf/core/ui/Shimmer;

    # getter for: Lorg/zzf/core/ui/Shimmer;->animatorListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v1}, Lorg/zzf/core/ui/Shimmer;->access$500(Lorg/zzf/core/ui/Shimmer;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    iget-object v0, p0, Lorg/zzf/core/ui/c;->b:Lorg/zzf/core/ui/Shimmer;

    # getter for: Lorg/zzf/core/ui/Shimmer;->animator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lorg/zzf/core/ui/Shimmer;->access$100(Lorg/zzf/core/ui/Shimmer;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
