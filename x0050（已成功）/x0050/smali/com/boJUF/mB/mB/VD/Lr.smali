.class final Lcom/boJUF/mB/mB/VD/Lr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/boJUF/mB/mB/aY/jj;


# instance fields
.field private synthetic LA:Ljava/lang/String;

.field private synthetic On:I

.field private synthetic TP:Ljava/lang/String;

.field private synthetic cp:I

.field private synthetic na:Lcom/boJUF/mB/mB/VD/Ke;


# direct methods
.method constructor <init>(Lcom/boJUF/mB/mB/VD/Ke;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/boJUF/mB/mB/VD/Lr;->na:Lcom/boJUF/mB/mB/VD/Ke;

    iput-object p2, p0, Lcom/boJUF/mB/mB/VD/Lr;->LA:Ljava/lang/String;

    iput p3, p0, Lcom/boJUF/mB/mB/VD/Lr;->cp:I

    iput p4, p0, Lcom/boJUF/mB/mB/VD/Lr;->On:I

    iput-object p5, p0, Lcom/boJUF/mB/mB/VD/Lr;->TP:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final LA(Landroid/app/AlertDialog;)V
    .locals 0

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public final cp(Landroid/app/AlertDialog;)V
    .locals 5

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Lr;->na:Lcom/boJUF/mB/mB/VD/Ke;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Lr;->LA:Ljava/lang/String;

    iget v2, p0, Lcom/boJUF/mB/mB/VD/Lr;->cp:I

    iget v3, p0, Lcom/boJUF/mB/mB/VD/Lr;->On:I

    iget-object v4, p0, Lcom/boJUF/mB/mB/VD/Lr;->TP:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/boJUF/mB/mB/VD/Ke;->cp(Lcom/boJUF/mB/mB/VD/Ke;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method
