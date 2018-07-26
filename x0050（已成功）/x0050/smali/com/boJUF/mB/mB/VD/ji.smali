.class final Lcom/boJUF/mB/mB/VD/ji;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/boJUF/mB/mB/aY/jj;


# instance fields
.field private synthetic LA:Ljava/lang/String;

.field private synthetic On:Ljava/lang/String;

.field private synthetic TP:Ljava/lang/String;

.field private synthetic cp:Landroid/content/Context;

.field private synthetic na:I

.field private synthetic oC:Lcom/boJUF/mB/mB/VD/Ke;


# direct methods
.method constructor <init>(Lcom/boJUF/mB/mB/VD/Ke;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/boJUF/mB/mB/VD/ji;->oC:Lcom/boJUF/mB/mB/VD/Ke;

    iput-object p2, p0, Lcom/boJUF/mB/mB/VD/ji;->LA:Ljava/lang/String;

    iput-object p3, p0, Lcom/boJUF/mB/mB/VD/ji;->cp:Landroid/content/Context;

    iput-object p4, p0, Lcom/boJUF/mB/mB/VD/ji;->On:Ljava/lang/String;

    iput-object p5, p0, Lcom/boJUF/mB/mB/VD/ji;->TP:Ljava/lang/String;

    iput p6, p0, Lcom/boJUF/mB/mB/VD/ji;->na:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final LA(Landroid/app/AlertDialog;)V
    .locals 3

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/ji;->oC:Lcom/boJUF/mB/mB/VD/Ke;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/ji;->LA:Ljava/lang/String;

    const-string v2, "4"

    invoke-virtual {v0, v1, v2}, Lcom/boJUF/mB/mB/VD/Ke;->LA(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/ji;->oC:Lcom/boJUF/mB/mB/VD/Ke;

    invoke-static {v0}, Lcom/boJUF/mB/mB/VD/Ke;->LA(Lcom/boJUF/mB/mB/VD/Ke;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public final cp(Landroid/app/AlertDialog;)V
    .locals 6

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/ji;->cp:Landroid/content/Context;

    invoke-static {v0}, Lcom/boJUF/mB/mB/mB/uI;->IL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/ji;->oC:Lcom/boJUF/mB/mB/VD/Ke;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/ji;->cp:Landroid/content/Context;

    iget-object v2, p0, Lcom/boJUF/mB/mB/VD/ji;->On:Ljava/lang/String;

    iget-object v3, p0, Lcom/boJUF/mB/mB/VD/ji;->TP:Ljava/lang/String;

    iget-object v4, p0, Lcom/boJUF/mB/mB/VD/ji;->LA:Ljava/lang/String;

    iget v5, p0, Lcom/boJUF/mB/mB/VD/ji;->na:I

    invoke-static/range {v0 .. v5}, Lcom/boJUF/mB/mB/VD/Ke;->cp(Lcom/boJUF/mB/mB/VD/Ke;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
