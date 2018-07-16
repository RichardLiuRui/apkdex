.class Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;
.super Ljava/lang/Object;
.source "Cocos2dxEditBoxHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->createEditBox(IIIIF)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$height:I

.field private final synthetic val$index:I

.field private final synthetic val$left:I

.field private final synthetic val$scaleX:F

.field private final synthetic val$top:I

.field private final synthetic val$width:I


# direct methods
.method constructor <init>(FIIIII)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->val$scaleX:F

    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->val$height:I

    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->val$left:I

    iput p4, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->val$top:I

    iput p5, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->val$width:I

    iput p6, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->val$index:I

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v8, 0x1

    const/4 v11, -0x2

    const/high16 v10, 0x40a00000    # 5.0f

    const/4 v9, 0x0

    .line 97
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBox;

    .line 98
    # getter for: Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$0()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object v7

    .line 97
    invoke-direct {v1, v7}, Lorg/cocos2dx/lib/Cocos2dxEditBox;-><init>(Landroid/content/Context;)V

    .line 99
    .local v1, "editBox":Lorg/cocos2dx/lib/Cocos2dxEditBox;
    invoke-virtual {v1, v8}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setFocusable(Z)V

    .line 100
    invoke-virtual {v1, v8}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setFocusableInTouchMode(Z)V

    .line 101
    invoke-virtual {v1, v12}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setInputFlag(I)V

    .line 102
    const/4 v7, 0x6

    invoke-virtual {v1, v7}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setInputMode(I)V

    .line 103
    invoke-virtual {v1, v9}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setReturnType(I)V

    .line 104
    const v7, -0x777778

    invoke-virtual {v1, v7}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setHintTextColor(I)V

    .line 105
    invoke-virtual {v1, v12}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setVisibility(I)V

    .line 106
    invoke-virtual {v1, v9}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setBackgroundColor(I)V

    .line 107
    const/4 v7, -0x1

    invoke-virtual {v1, v7}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setTextColor(I)V

    .line 108
    invoke-virtual {v1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setSingleLine()V

    .line 109
    iget v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->val$scaleX:F

    invoke-virtual {v1, v7}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setOpenGLViewScaleX(F)V

    .line 110
    # getter for: Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$0()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object v7

    invoke-virtual {v7}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 111
    .local v6, "r":Landroid/content/res/Resources;
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v0, v7, Landroid/util/DisplayMetrics;->density:F

    .line 112
    .local v0, "density":F
    iget v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->val$height:I

    int-to-float v7, v7

    const v8, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v7, v8

    div-float/2addr v7, v0

    float-to-int v3, v7

    .line 113
    .local v3, "paddingBottom":I
    int-to-float v7, v3

    iget v8, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->val$scaleX:F

    mul-float/2addr v8, v10

    .line 114
    div-float/2addr v8, v0

    .line 113
    sub-float/2addr v7, v8

    invoke-static {v7}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->convertToSP(F)I

    move-result v3

    .line 115
    div-int/lit8 v3, v3, 0x2

    .line 116
    move v5, v3

    .line 117
    .local v5, "paddingTop":I
    iget v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->val$scaleX:F

    mul-float/2addr v7, v10

    div-float/2addr v7, v0

    float-to-int v4, v7

    .line 118
    .local v4, "paddingLeft":I
    int-to-float v7, v4

    invoke-static {v7}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->convertToSP(F)I

    move-result v4

    .line 120
    invoke-virtual {v1, v4, v5, v9, v3}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setPadding(IIII)V

    .line 122
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 126
    .local v2, "lParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->val$left:I

    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 127
    iget v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->val$top:I

    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 128
    iget v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->val$width:I

    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 129
    iget v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->val$height:I

    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 130
    const/16 v7, 0x33

    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 132
    # getter for: Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mFrameLayout:Lorg/cocos2dx/lib/ResizeLayout;
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$1()Lorg/cocos2dx/lib/ResizeLayout;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Lorg/cocos2dx/lib/ResizeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    new-instance v7, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1;

    iget v8, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->val$index:I

    invoke-direct {v7, p0, v8}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;I)V

    invoke-virtual {v1, v7}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 162
    new-instance v7, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2;

    iget v8, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->val$index:I

    invoke-direct {v7, p0, v1, v8}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2;-><init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;Lorg/cocos2dx/lib/Cocos2dxEditBox;I)V

    invoke-virtual {v1, v7}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 196
    new-instance v7, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$3;

    iget v8, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->val$index:I

    invoke-direct {v7, p0, v1, v8}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$3;-><init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;Lorg/cocos2dx/lib/Cocos2dxEditBox;I)V

    invoke-virtual {v1, v7}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 215
    new-instance v7, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$4;

    iget v8, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->val$index:I

    invoke-direct {v7, p0, v8}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$4;-><init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;I)V

    invoke-virtual {v1, v7}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 227
    # getter for: Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mEditBoxArray:Landroid/util/SparseArray;
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$3()Landroid/util/SparseArray;

    move-result-object v7

    iget v8, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->val$index:I

    invoke-virtual {v7, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 228
    return-void
.end method
