.class public Lorg/zzf/core/ui/LoadingView;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public a:Lorg/zzf/core/ui/Shimmer;

.field b:Landroid/widget/RelativeLayout;

.field c:Landroid/widget/ProgressBar;

.field public d:Landroid/widget/Button;

.field public e:Landroid/widget/Button;

.field private f:Lorg/zzf/core/ui/ShimmerTextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/ImageView;

.field private j:Lorg/zzf/core/ui/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lorg/zzf/core/ui/LoadingView;->a()V

    return-void
.end method

.method private a()V
    .locals 11

    const/high16 v5, 0x42700000    # 60.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v10, 0x41200000    # 10.0f

    const/4 v3, 0x1

    const/4 v9, -0x1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lorg/zzf/core/ui/LoadingView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lorg/zzf/core/ui/LoadingView;->h:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lorg/zzf/core/ui/LoadingView;->h:Landroid/widget/RelativeLayout;

    const-string v1, "zhangpay_pic/loading_bg.png"

    invoke-virtual {p0}, Lorg/zzf/core/ui/LoadingView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/zzf/core/f/e;->b(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v0, 0x43910000    # 290.0f

    invoke-virtual {p0}, Lorg/zzf/core/ui/LoadingView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/zzf/core/f/e;->a(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/high16 v1, 0x42dc0000    # 110.0f

    invoke-virtual {p0}, Lorg/zzf/core/ui/LoadingView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/zzf/core/f/e;->a(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0}, Lorg/zzf/core/ui/LoadingView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/zzf/core/f/e;->a(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v2, v10

    float-to-int v2, v2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    invoke-virtual {v2, v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lorg/zzf/core/ui/LoadingView;->h:Landroid/widget/RelativeLayout;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    iget-object v0, p0, Lorg/zzf/core/ui/LoadingView;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v2}, Lorg/zzf/core/ui/LoadingView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lorg/zzf/core/ui/LoadingView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/zzf/core/ui/LoadingView;->c:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lorg/zzf/core/ui/LoadingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/zzf/core/f/e;->a(Landroid/content/Context;)F

    move-result v0

    mul-float/2addr v0, v5

    float-to-int v0, v0

    invoke-virtual {p0}, Lorg/zzf/core/ui/LoadingView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/zzf/core/f/e;->a(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v1, v5

    float-to-int v1, v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xb

    invoke-virtual {v2, v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0}, Lorg/zzf/core/ui/LoadingView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lorg/zzf/core/f/e;->a(Landroid/content/Context;)F

    move-result v5

    mul-float/2addr v5, v10

    float-to-int v5, v5

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lorg/zzf/core/ui/LoadingView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lorg/zzf/core/ui/LoadingView;->b:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lorg/zzf/core/ui/LoadingView;->b:Landroid/widget/RelativeLayout;

    const/16 v6, 0xfa0

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setId(I)V

    iget-object v5, p0, Lorg/zzf/core/ui/LoadingView;->h:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lorg/zzf/core/ui/LoadingView;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v6, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xb

    invoke-virtual {v7, v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/zzf/core/ui/LoadingView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/zzf/core/ui/LoadingView;->i:Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/zzf/core/ui/LoadingView;->i:Landroid/widget/ImageView;

    const-string v1, "zhangpay_pic/loading_360.png"

    invoke-virtual {p0}, Lorg/zzf/core/ui/LoadingView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/zzf/core/f/e;->b(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v8, Landroid/view/animation/AnimationSet;

    invoke-direct {v8, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lorg/zzf/core/ui/LoadingView;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lorg/zzf/core/ui/LoadingView;->b:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lorg/zzf/core/ui/LoadingView;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lorg/zzf/core/ui/LoadingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/zzf/core/f/e;->a(Landroid/content/Context;)F

    move-result v0

    mul-float/2addr v0, v10

    float-to-int v0, v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v9, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    new-instance v0, Lorg/zzf/core/ui/ShimmerTextView;

    invoke-virtual {p0}, Lorg/zzf/core/ui/LoadingView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/zzf/core/ui/ShimmerTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/zzf/core/ui/LoadingView;->f:Lorg/zzf/core/ui/ShimmerTextView;

    iget-object v0, p0, Lorg/zzf/core/ui/LoadingView;->f:Lorg/zzf/core/ui/ShimmerTextView;

    invoke-virtual {v0}, Lorg/zzf/core/ui/ShimmerTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lorg/zzf/core/ui/LoadingView;->f:Lorg/zzf/core/ui/ShimmerTextView;

    const/16 v2, 0xbc1

    invoke-virtual {v0, v2}, Lorg/zzf/core/ui/ShimmerTextView;->setId(I)V

    iget-object v0, p0, Lorg/zzf/core/ui/LoadingView;->f:Lorg/zzf/core/ui/ShimmerTextView;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v2}, Lorg/zzf/core/ui/ShimmerTextView;->setTextSize(F)V

    iget-object v0, p0, Lorg/zzf/core/ui/LoadingView;->f:Lorg/zzf/core/ui/ShimmerTextView;

    invoke-virtual {v0, v9}, Lorg/zzf/core/ui/ShimmerTextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/zzf/core/ui/LoadingView;->f:Lorg/zzf/core/ui/ShimmerTextView;

    const-string v2, "\u5b89\u5168\u52a0\u8f7d\u4e2d"

    invoke-virtual {v0, v2}, Lorg/zzf/core/ui/ShimmerTextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lorg/zzf/core/ui/LoadingView;->a:Lorg/zzf/core/ui/Shimmer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/zzf/core/ui/LoadingView;->a:Lorg/zzf/core/ui/Shimmer;

    invoke-virtual {v0}, Lorg/zzf/core/ui/Shimmer;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/zzf/core/ui/LoadingView;->a:Lorg/zzf/core/ui/Shimmer;

    invoke-virtual {v0}, Lorg/zzf/core/ui/Shimmer;->cancel()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/zzf/core/ui/LoadingView;->h:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lorg/zzf/core/ui/LoadingView;->f:Lorg/zzf/core/ui/ShimmerTextView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {p0}, Lorg/zzf/core/ui/LoadingView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/zzf/core/f/e;->a(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v9, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v2, 0x3

    iget-object v4, p0, Lorg/zzf/core/ui/LoadingView;->f:Lorg/zzf/core/ui/ShimmerTextView;

    invoke-virtual {v4}, Lorg/zzf/core/ui/ShimmerTextView;->getId()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/zzf/core/ui/LoadingView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/zzf/core/ui/LoadingView;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/zzf/core/ui/LoadingView;->g:Landroid/widget/TextView;

    const/16 v2, 0xbc2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setId(I)V

    iget-object v0, p0, Lorg/zzf/core/ui/LoadingView;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lorg/zzf/core/ui/LoadingView;->g:Landroid/widget/TextView;

    const/high16 v2, 0x41300000    # 11.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lorg/zzf/core/ui/LoadingView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/zzf/core/ui/LoadingView;->g:Landroid/widget/TextView;

    const-string v2, "   \u63d0\u9192\uff1a\u4e3a\u4fdd\u969c\u8ba1\u8d39\u7ed3\u679c\u7684\u51c6\u786e\u6027\uff0c\u8bf7\u52ff\u8fdb\u884c\u5176\u4ed6\u64cd\u4f5c\uff0c\n   \u5982\u6709\u7591\u95ee\u8bf7\u81f4\u75350755-86700489"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/zzf/core/ui/LoadingView;->h:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lorg/zzf/core/ui/LoadingView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    new-instance v0, Lorg/zzf/core/ui/Shimmer;

    invoke-direct {v0}, Lorg/zzf/core/ui/Shimmer;-><init>()V

    iput-object v0, p0, Lorg/zzf/core/ui/LoadingView;->a:Lorg/zzf/core/ui/Shimmer;

    iget-object v0, p0, Lorg/zzf/core/ui/LoadingView;->a:Lorg/zzf/core/ui/Shimmer;

    iget-object v2, p0, Lorg/zzf/core/ui/LoadingView;->f:Lorg/zzf/core/ui/ShimmerTextView;

    invoke-virtual {v0, v2}, Lorg/zzf/core/ui/Shimmer;->start(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/zzf/core/ui/LoadingView;->f:Lorg/zzf/core/ui/ShimmerTextView;

    invoke-virtual {v0, p1}, Lorg/zzf/core/ui/ShimmerTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/zzf/core/ui/LoadingView;->e:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lorg/zzf/core/ui/LoadingView;->j:Lorg/zzf/core/ui/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/ui/LoadingView;->j:Lorg/zzf/core/ui/b;

    invoke-interface {v0}, Lorg/zzf/core/ui/b;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/zzf/core/ui/LoadingView;->d:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/ui/LoadingView;->j:Lorg/zzf/core/ui/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/ui/LoadingView;->j:Lorg/zzf/core/ui/b;

    invoke-interface {v0}, Lorg/zzf/core/ui/b;->b()V

    goto :goto_0
.end method
