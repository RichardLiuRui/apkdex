.class public Lorg/zzf/core/ui/ShimmerViewHelper;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_REFLECTION_COLOR:I = -0xc34c8f


# instance fields
.field private callback:Lorg/zzf/core/ui/f;

.field private gradientX:F

.field private isSetUp:Z

.field private isShimmering:Z

.field private linearGradient:Landroid/graphics/LinearGradient;

.field private linearGradientMatrix:Landroid/graphics/Matrix;

.field private paint:Landroid/graphics/Paint;

.field private primaryColor:I

.field private reflectionColor:I

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/graphics/Paint;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/zzf/core/ui/ShimmerViewHelper;->view:Landroid/view/View;

    iput-object p2, p0, Lorg/zzf/core/ui/ShimmerViewHelper;->paint:Landroid/graphics/Paint;

    invoke-direct {p0, p3}, Lorg/zzf/core/ui/ShimmerViewHelper;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 3

    const v0, -0xc34c8f

    iput v0, p0, Lorg/zzf/core/ui/ShimmerViewHelper;->reflectionColor:I

    const v0, -0xc34c8f

    :try_start_0
    iput v0, p0, Lorg/zzf/core/ui/ShimmerViewHelper;->reflectionColor:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/zzf/core/ui/ShimmerViewHelper;->linearGradientMatrix:Landroid/graphics/Matrix;

    return-void

    :catch_0
    move-exception v0

    const-string v1, "ShimmerTextView"

    const-string v2, "Error while creating the view:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private resetLinearGradient()V
    .locals 8

    const/4 v6, 0x3

    const/4 v2, 0x0

    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lorg/zzf/core/ui/ShimmerViewHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    new-array v5, v6, [I

    const/4 v3, 0x0

    iget v4, p0, Lorg/zzf/core/ui/ShimmerViewHelper;->primaryColor:I

    aput v4, v5, v3

    const/4 v3, 0x1

    iget v4, p0, Lorg/zzf/core/ui/ShimmerViewHelper;->reflectionColor:I

    aput v4, v5, v3

    const/4 v3, 0x2

    iget v4, p0, Lorg/zzf/core/ui/ShimmerViewHelper;->primaryColor:I

    aput v4, v5, v3

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lorg/zzf/core/ui/ShimmerViewHelper;->linearGradient:Landroid/graphics/LinearGradient;

    iget-object v0, p0, Lorg/zzf/core/ui/ShimmerViewHelper;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/zzf/core/ui/ShimmerViewHelper;->linearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public getGradientX()F
    .locals 1

    iget v0, p0, Lorg/zzf/core/ui/ShimmerViewHelper;->gradientX:F

    return v0
.end method

.method public getPrimaryColor()I
    .locals 1

    iget v0, p0, Lorg/zzf/core/ui/ShimmerViewHelper;->primaryColor:I

    return v0
.end method

.method public getReflectionColor()I
    .locals 1

    iget v0, p0, Lorg/zzf/core/ui/ShimmerViewHelper;->reflectionColor:I

    return v0
.end method

.method public isSetUp()Z
    .locals 1

    iget-boolean v0, p0, Lorg/zzf/core/ui/ShimmerViewHelper;->isSetUp:Z

    return v0
.end method

.method public isShimmering()Z
    .locals 1

    iget-boolean v0, p0, Lorg/zzf/core/ui/ShimmerViewHelper;->isShimmering:Z

    return v0
.end method

.method public onDraw()V
    .locals 3

    iget-boolean v0, p0, Lorg/zzf/core/ui/ShimmerViewHelper;->isShimmering:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/zzf/core/ui/ShimmerViewHelper;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/ui/ShimmerViewHelper;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/zzf/core/ui/ShimmerViewHelper;->linearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_0
    iget-object v0, p0, Lorg/zzf/core/ui/ShimmerViewHelper;->linearGradientMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lorg/zzf/core/ui/ShimmerViewHelper;->gradientX:F

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v0, p0, Lorg/zzf/core/ui/ShimmerViewHelper;->linearGradient:Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lorg/zzf/core/ui/ShimmerViewHelper;->linearGradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/zzf/core/ui/ShimmerViewHelper;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0
.end method

.method protected onSizeChanged()V
    .locals 2

    invoke-direct {p0}, Lorg/zzf/core/ui/ShimmerViewHelper;->resetLinearGradient()V

    iget-boolean v0, p0, Lorg/zzf/core/ui/ShimmerViewHelper;->isSetUp:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/zzf/core/ui/ShimmerViewHelper;->isSetUp:Z

    iget-object v0, p0, Lorg/zzf/core/ui/ShimmerViewHelper;->callback:Lorg/zzf/core/ui/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/ui/ShimmerViewHelper;->callback:Lorg/zzf/core/ui/f;

    iget-object v1, p0, Lorg/zzf/core/ui/ShimmerViewHelper;->view:Landroid/view/View;

    invoke-interface {v0, v1}, Lorg/zzf/core/ui/f;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setAnimationSetupCallback(Lorg/zzf/core/ui/f;)V
    .locals 0

    iput-object p1, p0, Lorg/zzf/core/ui/ShimmerViewHelper;->callback:Lorg/zzf/core/ui/f;

    return-void
.end method

.method public setGradientX(F)V
    .locals 1

    iput p1, p0, Lorg/zzf/core/ui/ShimmerViewHelper;->gradientX:F

    iget-object v0, p0, Lorg/zzf/core/ui/ShimmerViewHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPrimaryColor(I)V
    .locals 1

    iput p1, p0, Lorg/zzf/core/ui/ShimmerViewHelper;->primaryColor:I

    iget-boolean v0, p0, Lorg/zzf/core/ui/ShimmerViewHelper;->isSetUp:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/zzf/core/ui/ShimmerViewHelper;->resetLinearGradient()V

    :cond_0
    return-void
.end method

.method public setReflectionColor(I)V
    .locals 1

    iput p1, p0, Lorg/zzf/core/ui/ShimmerViewHelper;->reflectionColor:I

    iget-boolean v0, p0, Lorg/zzf/core/ui/ShimmerViewHelper;->isSetUp:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/zzf/core/ui/ShimmerViewHelper;->resetLinearGradient()V

    :cond_0
    return-void
.end method

.method public setShimmering(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/zzf/core/ui/ShimmerViewHelper;->isShimmering:Z

    return-void
.end method
