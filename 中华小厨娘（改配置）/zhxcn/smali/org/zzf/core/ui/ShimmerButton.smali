.class public Lorg/zzf/core/ui/ShimmerButton;
.super Landroid/widget/Button;

# interfaces
.implements Lorg/zzf/core/ui/ShimmerViewBase;


# instance fields
.field private shimmerViewHelper:Lorg/zzf/core/ui/ShimmerViewHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v0, Lorg/zzf/core/ui/ShimmerViewHelper;

    invoke-virtual {p0}, Lorg/zzf/core/ui/ShimmerButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/zzf/core/ui/ShimmerViewHelper;-><init>(Landroid/view/View;Landroid/graphics/Paint;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lorg/zzf/core/ui/ShimmerButton;->shimmerViewHelper:Lorg/zzf/core/ui/ShimmerViewHelper;

    iget-object v0, p0, Lorg/zzf/core/ui/ShimmerButton;->shimmerViewHelper:Lorg/zzf/core/ui/ShimmerViewHelper;

    invoke-virtual {p0}, Lorg/zzf/core/ui/ShimmerButton;->getCurrentTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/zzf/core/ui/ShimmerViewHelper;->setPrimaryColor(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lorg/zzf/core/ui/ShimmerViewHelper;

    invoke-virtual {p0}, Lorg/zzf/core/ui/ShimmerButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lorg/zzf/core/ui/ShimmerViewHelper;-><init>(Landroid/view/View;Landroid/graphics/Paint;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lorg/zzf/core/ui/ShimmerButton;->shimmerViewHelper:Lorg/zzf/core/ui/ShimmerViewHelper;

    iget-object v0, p0, Lorg/zzf/core/ui/ShimmerButton;->shimmerViewHelper:Lorg/zzf/core/ui/ShimmerViewHelper;

    invoke-virtual {p0}, Lorg/zzf/core/ui/ShimmerButton;->getCurrentTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/zzf/core/ui/ShimmerViewHelper;->setPrimaryColor(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lorg/zzf/core/ui/ShimmerViewHelper;

    invoke-virtual {p0}, Lorg/zzf/core/ui/ShimmerButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lorg/zzf/core/ui/ShimmerViewHelper;-><init>(Landroid/view/View;Landroid/graphics/Paint;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lorg/zzf/core/ui/ShimmerButton;->shimmerViewHelper:Lorg/zzf/core/ui/ShimmerViewHelper;

    iget-object v0, p0, Lorg/zzf/core/ui/ShimmerButton;->shimmerViewHelper:Lorg/zzf/core/ui/ShimmerViewHelper;

    invoke-virtual {p0}, Lorg/zzf/core/ui/ShimmerButton;->getCurrentTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/zzf/core/ui/ShimmerViewHelper;->setPrimaryColor(I)V

    return-void
.end method


# virtual methods
.method public getGradientX()F
    .locals 1

    iget-object v0, p0, Lorg/zzf/core/ui/ShimmerButton;->shimmerViewHelper:Lorg/zzf/core/ui/ShimmerViewHelper;

    invoke-virtual {v0}, Lorg/zzf/core/ui/ShimmerViewHelper;->getGradientX()F

    move-result v0

    return v0
.end method

.method public getPrimaryColor()I
    .locals 1

    iget-object v0, p0, Lorg/zzf/core/ui/ShimmerButton;->shimmerViewHelper:Lorg/zzf/core/ui/ShimmerViewHelper;

    invoke-virtual {v0}, Lorg/zzf/core/ui/ShimmerViewHelper;->getPrimaryColor()I

    move-result v0

    return v0
.end method

.method public getReflectionColor()I
    .locals 1

    iget-object v0, p0, Lorg/zzf/core/ui/ShimmerButton;->shimmerViewHelper:Lorg/zzf/core/ui/ShimmerViewHelper;

    invoke-virtual {v0}, Lorg/zzf/core/ui/ShimmerViewHelper;->getReflectionColor()I

    move-result v0

    return v0
.end method

.method public isSetUp()Z
    .locals 1

    iget-object v0, p0, Lorg/zzf/core/ui/ShimmerButton;->shimmerViewHelper:Lorg/zzf/core/ui/ShimmerViewHelper;

    invoke-virtual {v0}, Lorg/zzf/core/ui/ShimmerViewHelper;->isSetUp()Z

    move-result v0

    return v0
.end method

.method public isShimmering()Z
    .locals 1

    iget-object v0, p0, Lorg/zzf/core/ui/ShimmerButton;->shimmerViewHelper:Lorg/zzf/core/ui/ShimmerViewHelper;

    invoke-virtual {v0}, Lorg/zzf/core/ui/ShimmerViewHelper;->isShimmering()Z

    move-result v0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lorg/zzf/core/ui/ShimmerButton;->shimmerViewHelper:Lorg/zzf/core/ui/ShimmerViewHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/ui/ShimmerButton;->shimmerViewHelper:Lorg/zzf/core/ui/ShimmerViewHelper;

    invoke-virtual {v0}, Lorg/zzf/core/ui/ShimmerViewHelper;->onDraw()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->onSizeChanged(IIII)V

    iget-object v0, p0, Lorg/zzf/core/ui/ShimmerButton;->shimmerViewHelper:Lorg/zzf/core/ui/ShimmerViewHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/ui/ShimmerButton;->shimmerViewHelper:Lorg/zzf/core/ui/ShimmerViewHelper;

    invoke-virtual {v0}, Lorg/zzf/core/ui/ShimmerViewHelper;->onSizeChanged()V

    :cond_0
    return-void
.end method

.method public setAnimationSetupCallback(Lorg/zzf/core/ui/f;)V
    .locals 1

    iget-object v0, p0, Lorg/zzf/core/ui/ShimmerButton;->shimmerViewHelper:Lorg/zzf/core/ui/ShimmerViewHelper;

    invoke-virtual {v0, p1}, Lorg/zzf/core/ui/ShimmerViewHelper;->setAnimationSetupCallback(Lorg/zzf/core/ui/f;)V

    return-void
.end method

.method public setGradientX(F)V
    .locals 1

    iget-object v0, p0, Lorg/zzf/core/ui/ShimmerButton;->shimmerViewHelper:Lorg/zzf/core/ui/ShimmerViewHelper;

    invoke-virtual {v0, p1}, Lorg/zzf/core/ui/ShimmerViewHelper;->setGradientX(F)V

    return-void
.end method

.method public setPrimaryColor(I)V
    .locals 1

    iget-object v0, p0, Lorg/zzf/core/ui/ShimmerButton;->shimmerViewHelper:Lorg/zzf/core/ui/ShimmerViewHelper;

    invoke-virtual {v0, p1}, Lorg/zzf/core/ui/ShimmerViewHelper;->setPrimaryColor(I)V

    return-void
.end method

.method public setReflectionColor(I)V
    .locals 1

    iget-object v0, p0, Lorg/zzf/core/ui/ShimmerButton;->shimmerViewHelper:Lorg/zzf/core/ui/ShimmerViewHelper;

    invoke-virtual {v0, p1}, Lorg/zzf/core/ui/ShimmerViewHelper;->setReflectionColor(I)V

    return-void
.end method

.method public setShimmering(Z)V
    .locals 1

    iget-object v0, p0, Lorg/zzf/core/ui/ShimmerButton;->shimmerViewHelper:Lorg/zzf/core/ui/ShimmerViewHelper;

    invoke-virtual {v0, p1}, Lorg/zzf/core/ui/ShimmerViewHelper;->setShimmering(Z)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lorg/zzf/core/ui/ShimmerButton;->shimmerViewHelper:Lorg/zzf/core/ui/ShimmerViewHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/ui/ShimmerButton;->shimmerViewHelper:Lorg/zzf/core/ui/ShimmerViewHelper;

    invoke-virtual {p0}, Lorg/zzf/core/ui/ShimmerButton;->getCurrentTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/zzf/core/ui/ShimmerViewHelper;->setPrimaryColor(I)V

    :cond_0
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lorg/zzf/core/ui/ShimmerButton;->shimmerViewHelper:Lorg/zzf/core/ui/ShimmerViewHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/ui/ShimmerButton;->shimmerViewHelper:Lorg/zzf/core/ui/ShimmerViewHelper;

    invoke-virtual {p0}, Lorg/zzf/core/ui/ShimmerButton;->getCurrentTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/zzf/core/ui/ShimmerViewHelper;->setPrimaryColor(I)V

    :cond_0
    return-void
.end method
