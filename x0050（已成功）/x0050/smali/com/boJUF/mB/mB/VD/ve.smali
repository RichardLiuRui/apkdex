.class public final Lcom/boJUF/mB/mB/VD/ve;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic LA:Lcom/boJUF/mB/mB/VD/Op;


# direct methods
.method public constructor <init>(Lcom/boJUF/mB/mB/VD/Op;)V
    .locals 0

    iput-object p1, p0, Lcom/boJUF/mB/mB/VD/ve;->LA:Lcom/boJUF/mB/mB/VD/Op;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "level"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/ve;->LA:Lcom/boJUF/mB/mB/VD/Op;

    invoke-static {v1}, Lcom/boJUF/mB/mB/VD/Op;->LA(Lcom/boJUF/mB/mB/VD/Op;)Lcom/boJUF/mB/mB/mB/uI;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/boJUF/mB/mB/mB/uI;->v:Ljava/lang/String;

    return-void
.end method
