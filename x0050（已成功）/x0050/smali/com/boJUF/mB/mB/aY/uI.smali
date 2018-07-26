.class public final Lcom/boJUF/mB/mB/aY/uI;
.super Landroid/widget/TextView;


# instance fields
.field private LA:Landroid/text/StaticLayout;

.field private cp:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/boJUF/mB/mB/aY/uI;->LA:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected final onSizeChanged(IIII)V
    .locals 8

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/boJUF/mB/mB/aY/uI;->cp:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/boJUF/mB/mB/aY/uI;->cp:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/boJUF/mB/mB/aY/uI;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcom/boJUF/mB/mB/aY/uI;->cp:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/boJUF/mB/mB/aY/uI;->getCurrentTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p0}, Lcom/boJUF/mB/mB/aY/uI;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/boJUF/mB/mB/aY/uI;->cp:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/boJUF/mB/mB/aY/uI;->getWidth()I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/boJUF/mB/mB/aY/uI;->LA:Landroid/text/StaticLayout;

    return-void
.end method
