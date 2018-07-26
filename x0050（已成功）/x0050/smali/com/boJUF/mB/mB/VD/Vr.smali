.class final Lcom/boJUF/mB/mB/VD/Vr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/boJUF/mB/mB/aY/jj;


# instance fields
.field private synthetic LA:Ljava/lang/String;

.field private synthetic On:Ljava/lang/String;

.field private synthetic TP:I

.field private synthetic cp:Ljava/lang/String;

.field private synthetic na:Lcom/boJUF/mB/mB/VD/Ke;


# direct methods
.method constructor <init>(Lcom/boJUF/mB/mB/VD/Ke;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/boJUF/mB/mB/VD/Vr;->na:Lcom/boJUF/mB/mB/VD/Ke;

    iput-object p2, p0, Lcom/boJUF/mB/mB/VD/Vr;->LA:Ljava/lang/String;

    iput-object p3, p0, Lcom/boJUF/mB/mB/VD/Vr;->cp:Ljava/lang/String;

    iput-object p4, p0, Lcom/boJUF/mB/mB/VD/Vr;->On:Ljava/lang/String;

    iput p5, p0, Lcom/boJUF/mB/mB/VD/Vr;->TP:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final LA(Landroid/app/AlertDialog;)V
    .locals 4

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Vr;->na:Lcom/boJUF/mB/mB/VD/Ke;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Vr;->LA:Ljava/lang/String;

    const/16 v2, 0x835

    const-string v3, "MP"

    invoke-virtual {v0, v1, v2, v3}, Lcom/boJUF/mB/mB/VD/Ke;->cp(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x837

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/boJUF/mB/mB/VD/Vr;->na:Lcom/boJUF/mB/mB/VD/Ke;

    invoke-static {v2}, Lcom/boJUF/mB/mB/VD/Ke;->LA(Lcom/boJUF/mB/mB/VD/Ke;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(ILjava/util/HashMap;Landroid/content/Context;)Z

    return-void
.end method

.method public final cp(Landroid/app/AlertDialog;)V
    .locals 6

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Vr;->na:Lcom/boJUF/mB/mB/VD/Ke;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Vr;->na:Lcom/boJUF/mB/mB/VD/Ke;

    invoke-static {v1}, Lcom/boJUF/mB/mB/VD/Ke;->LA(Lcom/boJUF/mB/mB/VD/Ke;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/boJUF/mB/mB/VD/Vr;->cp:Ljava/lang/String;

    iget-object v3, p0, Lcom/boJUF/mB/mB/VD/Vr;->On:Ljava/lang/String;

    iget-object v4, p0, Lcom/boJUF/mB/mB/VD/Vr;->LA:Ljava/lang/String;

    iget v5, p0, Lcom/boJUF/mB/mB/VD/Vr;->TP:I

    invoke-static/range {v0 .. v5}, Lcom/boJUF/mB/mB/VD/Ke;->On(Lcom/boJUF/mB/mB/VD/Ke;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
