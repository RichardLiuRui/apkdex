.class final Lcom/android/mtools/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic aA:I

.field private final synthetic aB:I

.field private final synthetic aC:I

.field private synthetic au:Lcom/android/mtools/n;

.field private final synthetic av:Landroid/content/DialogInterface$OnClickListener;

.field private final synthetic aw:Landroid/view/View;

.field private final synthetic ax:I

.field private final synthetic ay:I

.field private final synthetic az:I


# direct methods
.method constructor <init>(Lcom/android/mtools/n;Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;IIIIII)V
    .locals 0

    iput-object p1, p0, Lcom/android/mtools/p;->au:Lcom/android/mtools/n;

    iput-object p2, p0, Lcom/android/mtools/p;->av:Landroid/content/DialogInterface$OnClickListener;

    iput-object p3, p0, Lcom/android/mtools/p;->aw:Landroid/view/View;

    iput p4, p0, Lcom/android/mtools/p;->ax:I

    iput p5, p0, Lcom/android/mtools/p;->ay:I

    iput p6, p0, Lcom/android/mtools/p;->az:I

    iput p7, p0, Lcom/android/mtools/p;->aA:I

    iput p8, p0, Lcom/android/mtools/p;->aB:I

    iput p9, p0, Lcom/android/mtools/p;->aC:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/android/mtools/p;->av:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mtools/p;->av:Landroid/content/DialogInterface$OnClickListener;

    sget-object v1, Lcom/android/mtools/n;->ae:Lcom/android/mtools/MPDialog;

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mtools/p;->aw:Landroid/view/View;

    iget v1, p0, Lcom/android/mtools/p;->ax:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    iget v1, p0, Lcom/android/mtools/p;->ay:I

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/android/mtools/p;->au:Lcom/android/mtools/n;

    invoke-static {v0}, Lcom/android/mtools/n;->b(Lcom/android/mtools/n;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    sget-object v1, Lcom/android/mtools/n;->ae:Lcom/android/mtools/MPDialog;

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/mtools/p;->az:I

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lcom/android/mtools/p;->au:Lcom/android/mtools/n;

    invoke-static {v0}, Lcom/android/mtools/n;->c(Lcom/android/mtools/n;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    sget-object v1, Lcom/android/mtools/n;->ae:Lcom/android/mtools/MPDialog;

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/mtools/p;->aA:I

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/android/mtools/p;->au:Lcom/android/mtools/n;

    invoke-static {v0}, Lcom/android/mtools/n;->d(Lcom/android/mtools/n;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    sget-object v1, Lcom/android/mtools/n;->ae:Lcom/android/mtools/MPDialog;

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/android/mtools/p;->aB:I

    if-ne v1, v0, :cond_4

    iget-object v0, p0, Lcom/android/mtools/p;->au:Lcom/android/mtools/n;

    invoke-static {v0}, Lcom/android/mtools/n;->e(Lcom/android/mtools/n;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    sget-object v1, Lcom/android/mtools/n;->ae:Lcom/android/mtools/MPDialog;

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/android/mtools/p;->aC:I

    if-ne v1, v0, :cond_5

    iget-object v0, p0, Lcom/android/mtools/p;->au:Lcom/android/mtools/n;

    invoke-static {v0}, Lcom/android/mtools/n;->f(Lcom/android/mtools/n;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    sget-object v1, Lcom/android/mtools/n;->ae:Lcom/android/mtools/MPDialog;

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/mtools/p;->au:Lcom/android/mtools/n;

    invoke-static {v0}, Lcom/android/mtools/n;->g(Lcom/android/mtools/n;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    sget-object v1, Lcom/android/mtools/n;->ae:Lcom/android/mtools/MPDialog;

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0
.end method
