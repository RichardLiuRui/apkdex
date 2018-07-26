.class final Lcom/boJUF/mB/mB/pO/Iy/tP/ac;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic LA:Lcom/boJUF/mB/mB/pO/Iy/tP/uI;


# direct methods
.method constructor <init>(Lcom/boJUF/mB/mB/pO/Iy/tP/uI;)V
    .locals 0

    iput-object p1, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/ac;->LA:Lcom/boJUF/mB/mB/pO/Iy/tP/uI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->na()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/boJUF/mB/mB/pO/Iy/tP/Ke;

    iget-object v3, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/ac;->LA:Lcom/boJUF/mB/mB/pO/Iy/tP/uI;

    invoke-virtual {p0}, Lcom/boJUF/mB/mB/pO/Iy/tP/ac;->getResultCode()I

    move-result v4

    invoke-direct {v2, v3, v0, v4}, Lcom/boJUF/mB/mB/pO/Iy/tP/Ke;-><init>(Lcom/boJUF/mB/mB/pO/Iy/tP/uI;Landroid/os/Bundle;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
