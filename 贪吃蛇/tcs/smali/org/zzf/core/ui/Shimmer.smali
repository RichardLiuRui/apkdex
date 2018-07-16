.class public Lorg/zzf/core/ui/Shimmer;
.super Ljava/lang/Object;


# static fields
.field public static final ANIMATION_DIRECTION_LTR:I = 0x0

.field public static final ANIMATION_DIRECTION_RTL:I = 0x1

.field private static final DEFAULT_DIRECTION:I = 0x0

.field private static final DEFAULT_DURATION:J = 0x3e8L

.field private static final DEFAULT_REPEAT_COUNT:I = -0x1

.field private static final DEFAULT_START_DELAY:J


# instance fields
.field private animator:Landroid/animation/ObjectAnimator;

.field private animatorListener:Landroid/animation/Animator$AnimatorListener;

.field private direction:I

.field private duration:J

.field private repeatCount:I

.field private startDelay:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/zzf/core/ui/Shimmer;->repeatCount:I

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lorg/zzf/core/ui/Shimmer;->duration:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/zzf/core/ui/Shimmer;->startDelay:J

    const/4 v0, 0x0

    iput v0, p0, Lorg/zzf/core/ui/Shimmer;->direction:I

    return-void
.end method

.method static synthetic access$000(Lorg/zzf/core/ui/Shimmer;)I
    .locals 1

    iget v0, p0, Lorg/zzf/core/ui/Shimmer;->direction:I

    return v0
.end method

.method static synthetic access$100(Lorg/zzf/core/ui/Shimmer;)Landroid/animation/ObjectAnimator;
    .locals 1

    iget-object v0, p0, Lorg/zzf/core/ui/Shimmer;->animator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$102(Lorg/zzf/core/ui/Shimmer;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Lorg/zzf/core/ui/Shimmer;->animator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$200(Lorg/zzf/core/ui/Shimmer;)I
    .locals 1

    iget v0, p0, Lorg/zzf/core/ui/Shimmer;->repeatCount:I

    return v0
.end method

.method static synthetic access$300(Lorg/zzf/core/ui/Shimmer;)J
    .locals 2

    iget-wide v0, p0, Lorg/zzf/core/ui/Shimmer;->duration:J

    return-wide v0
.end method

.method static synthetic access$400(Lorg/zzf/core/ui/Shimmer;)J
    .locals 2

    iget-wide v0, p0, Lorg/zzf/core/ui/Shimmer;->startDelay:J

    return-wide v0
.end method

.method static synthetic access$500(Lorg/zzf/core/ui/Shimmer;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    iget-object v0, p0, Lorg/zzf/core/ui/Shimmer;->animatorListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lorg/zzf/core/ui/Shimmer;->animator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/ui/Shimmer;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public getAnimatorListener()Landroid/animation/Animator$AnimatorListener;
    .locals 1

    iget-object v0, p0, Lorg/zzf/core/ui/Shimmer;->animatorListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method public getDirection()I
    .locals 1

    iget v0, p0, Lorg/zzf/core/ui/Shimmer;->direction:I

    return v0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lorg/zzf/core/ui/Shimmer;->duration:J

    return-wide v0
.end method

.method public getRepeatCount()I
    .locals 1

    iget v0, p0, Lorg/zzf/core/ui/Shimmer;->repeatCount:I

    return v0
.end method

.method public getStartDelay()J
    .locals 2

    iget-wide v0, p0, Lorg/zzf/core/ui/Shimmer;->startDelay:J

    return-wide v0
.end method

.method public isAnimating()Z
    .locals 1

    iget-object v0, p0, Lorg/zzf/core/ui/Shimmer;->animator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/ui/Shimmer;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAnimatorListener(Landroid/animation/Animator$AnimatorListener;)Lorg/zzf/core/ui/Shimmer;
    .locals 0

    iput-object p1, p0, Lorg/zzf/core/ui/Shimmer;->animatorListener:Landroid/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method public setDirection(I)Lorg/zzf/core/ui/Shimmer;
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The animation direction must be either ANIMATION_DIRECTION_LTR or ANIMATION_DIRECTION_RTL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lorg/zzf/core/ui/Shimmer;->direction:I

    return-object p0
.end method

.method public setDuration(J)Lorg/zzf/core/ui/Shimmer;
    .locals 0

    iput-wide p1, p0, Lorg/zzf/core/ui/Shimmer;->duration:J

    return-object p0
.end method

.method public setRepeatCount(I)Lorg/zzf/core/ui/Shimmer;
    .locals 0

    iput p1, p0, Lorg/zzf/core/ui/Shimmer;->repeatCount:I

    return-object p0
.end method

.method public setStartDelay(J)Lorg/zzf/core/ui/Shimmer;
    .locals 0

    iput-wide p1, p0, Lorg/zzf/core/ui/Shimmer;->startDelay:J

    return-object p0
.end method

.method public start(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lorg/zzf/core/ui/Shimmer;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lorg/zzf/core/ui/c;

    invoke-direct {v1, p0, p1}, Lorg/zzf/core/ui/c;-><init>(Lorg/zzf/core/ui/Shimmer;Landroid/view/View;)V

    move-object v0, p1

    check-cast v0, Lorg/zzf/core/ui/ShimmerViewBase;

    invoke-interface {v0}, Lorg/zzf/core/ui/ShimmerViewBase;->isSetUp()Z

    move-result v0

    if-nez v0, :cond_1

    check-cast p1, Lorg/zzf/core/ui/ShimmerViewBase;

    new-instance v0, Lorg/zzf/core/ui/e;

    invoke-direct {v0, p0, v1}, Lorg/zzf/core/ui/e;-><init>(Lorg/zzf/core/ui/Shimmer;Ljava/lang/Runnable;)V

    invoke-interface {p1, v0}, Lorg/zzf/core/ui/ShimmerViewBase;->setAnimationSetupCallback(Lorg/zzf/core/ui/f;)V

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
