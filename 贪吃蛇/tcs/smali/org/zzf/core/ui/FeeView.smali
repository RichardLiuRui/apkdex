.class public Lorg/zzf/core/ui/FeeView;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;


# instance fields
.field public a:Landroid/widget/Button;

.field public b:Landroid/widget/Button;

.field public c:Landroid/widget/Button;

.field public d:Landroid/widget/TextView;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/webkit/WebView;

.field private k:Lorg/zzf/core/ui/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lorg/zzf/core/ui/FeeView;->b()V

    return-void
.end method

.method private b()V
    .locals 11

    const/high16 v10, 0x42c80000    # 100.0f

    const/high16 v9, 0x41700000    # 15.0f

    const/4 v6, 0x0

    const/high16 v8, 0x41200000    # 10.0f

    const/4 v7, -0x1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lorg/zzf/core/ui/FeeView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lorg/zzf/core/ui/FeeView;->g:Landroid/widget/RelativeLayout;

    const/16 v0, 0x66

    invoke-static {v0, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/zzf/core/ui/FeeView;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lorg/zzf/core/ui/FeeView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "zhangpay_pic/zhangpay_bg.9.png"

    invoke-static {v0, v1}, Lorg/zzf/core/f/k;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/ui/FeeView;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v0, 0x437a0000    # 250.0f

    invoke-virtual {p0}, Lorg/zzf/core/ui/FeeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/zzf/core/f/e;->a(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/high16 v1, 0x437a0000    # 250.0f

    invoke-virtual {p0}, Lorg/zzf/core/ui/FeeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/zzf/core/f/e;->a(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0}, Lorg/zzf/core/ui/FeeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/zzf/core/f/e;->a(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v2, v8

    float-to-int v2, v2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    invoke-virtual {v2, v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lorg/zzf/core/ui/FeeView;->g:Landroid/widget/RelativeLayout;

    const/16 v1, 0x7cc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    iget-object v0, p0, Lorg/zzf/core/ui/FeeView;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v2}, Lorg/zzf/core/ui/FeeView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v0, 0x42480000    # 50.0f

    invoke-virtual {p0}, Lorg/zzf/core/ui/FeeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/zzf/core/f/e;->a(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/high16 v1, 0x437a0000    # 250.0f

    invoke-virtual {p0}, Lorg/zzf/core/ui/FeeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/zzf/core/f/e;->a(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0}, Lorg/zzf/core/ui/FeeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/zzf/core/f/e;->a(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v2, v8

    float-to-int v2, v2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    invoke-virtual {v2, v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/zzf/core/ui/FeeView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/zzf/core/ui/FeeView;->h:Landroid/widget/ImageView;

    iget-object v3, p0, Lorg/zzf/core/ui/FeeView;->h:Landroid/widget/ImageView;

    const-string v4, "zhangpay_pic/zhangpay_top_title.png"

    invoke-virtual {p0}, Lorg/zzf/core/ui/FeeView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5, v1, v0}, Lorg/zzf/core/f/e;->a(Ljava/lang/String;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lorg/zzf/core/ui/FeeView;->h:Landroid/widget/ImageView;

    const/16 v1, 0x7cd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    iget-object v0, p0, Lorg/zzf/core/ui/FeeView;->g:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lorg/zzf/core/ui/FeeView;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v0, 0x435c0000    # 220.0f

    invoke-virtual {p0}, Lorg/zzf/core/ui/FeeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/zzf/core/f/e;->a(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Lorg/zzf/core/ui/FeeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/zzf/core/f/e;->a(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v1, v10

    float-to-int v1, v1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {p0}, Lorg/zzf/core/ui/FeeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lorg/zzf/core/f/e;->a(Landroid/content/Context;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x3

    iget-object v1, p0, Lorg/zzf/core/ui/FeeView;->h:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 v0, 0xe

    invoke-virtual {v3, v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/zzf/core/ui/FeeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/zzf/core/ui/FeeView;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/zzf/core/ui/FeeView;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lorg/zzf/core/ui/FeeView;->i:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lorg/zzf/core/ui/FeeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/zzf/core/b/h;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "X.XX"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/zzf/core/ui/FeeView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lorg/zzf/core/b/h;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/zzf/core/ui/FeeView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lorg/zzf/core/b/h;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".00"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/ui/FeeView;->i:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5546\u54c1\u540d\u79f0:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/zzf/core/ui/FeeView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lorg/zzf/core/b/h;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\u5546\u54c1\u4ef7\u683c:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/zzf/core/ui/FeeView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lorg/zzf/core/b/h;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\u5546\u54c1\u6982\u8ff0:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/zzf/core/ui/FeeView;->i:Landroid/widget/TextView;

    const/high16 v1, -0x67000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/zzf/core/ui/FeeView;->i:Landroid/widget/TextView;

    const/16 v1, 0x7ce

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    iget-object v0, p0, Lorg/zzf/core/ui/FeeView;->g:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lorg/zzf/core/ui/FeeView;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v0, 0x435c0000    # 220.0f

    invoke-virtual {p0}, Lorg/zzf/core/ui/FeeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/zzf/core/f/e;->a(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/high16 v1, 0x432a0000    # 170.0f

    invoke-virtual {p0}, Lorg/zzf/core/ui/FeeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/zzf/core/f/e;->a(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/high16 v2, 0x42960000    # 75.0f

    invoke-virtual {p0}, Lorg/zzf/core/ui/FeeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lorg/zzf/core/f/e;->a(Landroid/content/Context;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x3

    iget-object v1, p0, Lorg/zzf/core/ui/FeeView;->h:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 v0, 0xe

    invoke-virtual {v3, v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/zzf/core/ui/FeeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/zzf/core/ui/FeeView;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/zzf/core/ui/FeeView;->i:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lorg/zzf/core/ui/FeeView;->i:Landroid/widget/TextView;

    const/16 v1, 0x52

    const/16 v2, 0xa1

    const/16 v4, 0xe8

    invoke-static {v1, v2, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/zzf/core/ui/FeeView;->i:Landroid/widget/TextView;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    iget-object v0, p0, Lorg/zzf/core/ui/FeeView;->g:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lorg/zzf/core/ui/FeeView;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {p0}, Lorg/zzf/core/ui/FeeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/zzf/core/f/e;->a(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {p0}, Lorg/zzf/core/ui/FeeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/zzf/core/f/e;->a(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/high16 v2, 0x43480000    # 200.0f

    invoke-virtual {p0}, Lorg/zzf/core/ui/FeeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lorg/zzf/core/f/e;->a(Landroid/content/Context;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    invoke-virtual {v3, v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0xd

    invoke-virtual {v3, v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lorg/zzf/core/ui/FeeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/zzf/core/ui/FeeView;->j:Landroid/webkit/WebView;

    iget-object v0, p0, Lorg/zzf/core/ui/FeeView;->j:Landroid/webkit/WebView;

    const/16 v1, 0x7d1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setId(I)V

    iget-object v0, p0, Lorg/zzf/core/ui/FeeView;->j:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    const/high16 v0, 0x42000000    # 32.0f

    invoke-virtual {p0}, Lorg/zzf/core/ui/FeeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/zzf/core/f/e;->a(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/high16 v1, 0x42c00000    # 96.0f

    invoke-virtual {p0}, Lorg/zzf/core/ui/FeeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/zzf/core/f/e;->a(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0}, Lorg/zzf/core/ui/FeeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/zzf/core/f/e;->a(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v2, v8

    float-to-int v2, v2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x9

    invoke-virtual {v3, v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-virtual {p0}, Lorg/zzf/core/ui/FeeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/zzf/core/f/e;->a(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Lorg/zzf/core/ui/FeeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/zzf/core/f/e;->a(Landroid/content/Context;)F

    move-result v0

    mul-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/16 v0, 0xc

    iget-object v1, p0, Lorg/zzf/core/ui/FeeView;->j:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getId()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lorg/zzf/core/ui/FeeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/zzf/core/f/e;->a(Landroid/content/Context;)F

    move-result v0

    mul-float/2addr v0, v9

    float-to-int v0, v0

    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lorg/zzf/core/ui/FeeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/zzf/core/ui/FeeView;->a:Landroid/widget/Button;

    iget-object v0, p0, Lorg/zzf/core/ui/FeeView;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/zzf/core/ui/FeeView;->a:Landroid/widget/Button;

    invoke-virtual {p0}, Lorg/zzf/core/ui/FeeView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "zhangpay_pic/button_normal.9.png"

    const-string v4, "zhangpay_pic/button_on.9.png"

    const-string v5, "zhangpay_pic/button_on.9.png"

    const-string v6, "zhangpay_pic/button_on.9.png"

    invoke-static {v1, v2, v4, v5, v6}, Lorg/zzf/core/f/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/zzf/core/ui/FeeView;->a:Landroid/widget/Button;

    const/16 v1, 0x7d2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    iget-object v0, p0, Lorg/zzf/core/ui/FeeView;->a:Landroid/widget/Button;

    const-string v1, "\u786e\u8ba4"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/zzf/core/ui/FeeView;->a:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lorg/zzf/core/ui/FeeView;->a:Landroid/widget/Button;

    const/high16 v1, 0x41880000    # 17.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    iget-object v0, p0, Lorg/zzf/core/ui/FeeView;->g:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lorg/zzf/core/ui/FeeView;->a:Landroid/widget/Button;

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v0, 0x42000000    # 32.0f

    invoke-virtual {p0}, Lorg/zzf/core/ui/FeeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/zzf/core/f/e;->a(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/high16 v1, 0x42c00000    # 96.0f

    invoke-virtual {p0}, Lorg/zzf/core/ui/FeeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/zzf/core/f/e;->a(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0}, Lorg/zzf/core/ui/FeeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/zzf/core/f/e;->a(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v2, v8

    float-to-int v2, v2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xc

    invoke-virtual {v3, v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-virtual {p0}, Lorg/zzf/core/ui/FeeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/zzf/core/f/e;->a(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/16 v0, 0xb

    iget-object v1, p0, Lorg/zzf/core/ui/FeeView;->j:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getId()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lorg/zzf/core/ui/FeeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/zzf/core/f/e;->a(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lorg/zzf/core/ui/FeeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/zzf/core/f/e;->a(Landroid/content/Context;)F

    move-result v0

    mul-float/2addr v0, v9

    float-to-int v0, v0

    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lorg/zzf/core/ui/FeeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/zzf/core/ui/FeeView;->b:Landroid/widget/Button;

    iget-object v0, p0, Lorg/zzf/core/ui/FeeView;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/zzf/core/ui/FeeView;->b:Landroid/widget/Button;

    invoke-virtual {p0}, Lorg/zzf/core/ui/FeeView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "zhangpay_pic/button_normal.9.png"

    const-string v4, "zhangpay_pic/button_on.9.png"

    const-string v5, "zhangpay_pic/button_on.9.png"

    const-string v6, "zhangpay_pic/button_on.9.png"

    invoke-static {v1, v2, v4, v5, v6}, Lorg/zzf/core/f/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/zzf/core/ui/FeeView;->b:Landroid/widget/Button;

    const/16 v1, 0x7d2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    iget-object v0, p0, Lorg/zzf/core/ui/FeeView;->b:Landroid/widget/Button;

    const-string v1, "\u53d6\u6d88"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/zzf/core/ui/FeeView;->b:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lorg/zzf/core/ui/FeeView;->b:Landroid/widget/Button;

    const/high16 v1, 0x41880000    # 17.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    iget-object v0, p0, Lorg/zzf/core/ui/FeeView;->g:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lorg/zzf/core/ui/FeeView;->b:Landroid/widget/Button;

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lorg/zzf/core/ui/FeeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/zzf/core/f/e;->a(Landroid/content/Context;)F

    move-result v0

    mul-float/2addr v0, v10

    float-to-int v0, v0

    invoke-virtual {p0}, Lorg/zzf/core/ui/FeeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/zzf/core/f/e;->a(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v1, v10

    float-to-int v1, v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xb

    iget-object v1, p0, Lorg/zzf/core/ui/FeeView;->a:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v0, 0x43520000    # 210.0f

    invoke-virtual {p0}, Lorg/zzf/core/ui/FeeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/zzf/core/f/e;->a(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/high16 v0, 0x43660000    # 230.0f

    invoke-virtual {p0}, Lorg/zzf/core/ui/FeeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/zzf/core/f/e;->a(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/zzf/core/ui/FeeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/zzf/core/ui/FeeView;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/zzf/core/ui/FeeView;->d:Landroid/widget/TextView;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lorg/zzf/core/ui/FeeView;->d:Landroid/widget/TextView;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/zzf/core/ui/FeeView;->a:Landroid/widget/Button;

    const/16 v1, 0x7d4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    iget-object v0, p0, Lorg/zzf/core/ui/FeeView;->d:Landroid/widget/TextView;

    const-string v1, "v4.7.10"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/zzf/core/ui/FeeView;->g:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lorg/zzf/core/ui/FeeView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    const/4 v1, 0x0

    sget-object v0, Lorg/zzf/core/ui/FeeView;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/ui/FeeView;->i:Landroid/widget/TextView;

    sget-object v2, Lorg/zzf/core/ui/FeeView;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    sget-object v0, Lorg/zzf/core/ui/FeeView;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/zzf/core/ui/FeeView;->j:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v2, "utf-8"

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/zzf/core/ui/FeeView;->j:Landroid/webkit/WebView;

    sget-object v2, Lorg/zzf/core/ui/FeeView;->e:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(Lorg/zzf/core/ui/a;)V
    .locals 0

    iput-object p1, p0, Lorg/zzf/core/ui/FeeView;->k:Lorg/zzf/core/ui/a;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/zzf/core/ui/FeeView;->c:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lorg/zzf/core/ui/FeeView;->k:Lorg/zzf/core/ui/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/ui/FeeView;->k:Lorg/zzf/core/ui/a;

    invoke-interface {v0}, Lorg/zzf/core/ui/a;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/zzf/core/ui/FeeView;->a:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lorg/zzf/core/ui/FeeView;->k:Lorg/zzf/core/ui/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/ui/FeeView;->k:Lorg/zzf/core/ui/a;

    invoke-interface {v0}, Lorg/zzf/core/ui/a;->a()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/zzf/core/ui/FeeView;->b:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/ui/FeeView;->k:Lorg/zzf/core/ui/a;

    invoke-interface {v0}, Lorg/zzf/core/ui/a;->b()V

    goto :goto_0
.end method
