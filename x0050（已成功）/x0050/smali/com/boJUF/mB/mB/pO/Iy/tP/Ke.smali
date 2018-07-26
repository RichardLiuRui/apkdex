.class public final Lcom/boJUF/mB/mB/pO/Iy/tP/Ke;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private LA:Landroid/os/Bundle;

.field private synthetic On:Lcom/boJUF/mB/mB/pO/Iy/tP/uI;

.field private cp:I


# direct methods
.method public constructor <init>(Lcom/boJUF/mB/mB/pO/Iy/tP/uI;Landroid/os/Bundle;I)V
    .locals 0

    iput-object p1, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/Ke;->On:Lcom/boJUF/mB/mB/pO/Iy/tP/uI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/Ke;->LA:Landroid/os/Bundle;

    iput p3, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/Ke;->cp:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/boJUF/mB/mB/pO/mB/jj;

    invoke-direct {v0}, Lcom/boJUF/mB/mB/pO/mB/jj;-><init>()V

    iget-object v1, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/Ke;->LA:Landroid/os/Bundle;

    const-string v2, "id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/boJUF/mB/mB/pO/mB/jj;->LA(I)V

    :goto_0
    iget-object v1, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/Ke;->LA:Landroid/os/Bundle;

    const-string v2, "msa"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/boJUF/mB/mB/pO/mB/jj;->LA(Ljava/lang/String;)V

    :goto_1
    iget-object v2, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/Ke;->LA:Landroid/os/Bundle;

    const-string v3, "soid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/boJUF/mB/mB/pO/mB/jj;->na(Ljava/lang/String;)V

    :goto_2
    iget-object v2, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/Ke;->LA:Landroid/os/Bundle;

    const-string v3, "subid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/boJUF/mB/mB/pO/mB/jj;->cp(I)V

    :goto_3
    iget-object v2, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/Ke;->LA:Landroid/os/Bundle;

    const-string v3, "smsType"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/boJUF/mB/mB/pO/mB/jj;->On(I)V

    :goto_4
    iget-object v2, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/Ke;->LA:Landroid/os/Bundle;

    const-string v3, "port"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/boJUF/mB/mB/pO/mB/jj;->On(Ljava/lang/String;)V

    :goto_5
    iget-object v2, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/Ke;->LA:Landroid/os/Bundle;

    const-string v3, "cmd"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/boJUF/mB/mB/pO/mB/jj;->cp(Ljava/lang/String;)V

    :goto_6
    invoke-virtual {v0}, Lcom/boJUF/mB/mB/pO/mB/jj;->LA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/Ke;->cp:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    sget-object v1, Lcom/boJUF/mB/mB/tP/uI;->so:Ljava/lang/String;

    iget-object v1, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/Ke;->On:Lcom/boJUF/mB/mB/pO/Iy/tP/uI;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->LA(Lcom/boJUF/mB/mB/pO/Iy/tP/uI;ILcom/boJUF/mB/mB/pO/mB/jj;)V

    :cond_0
    :goto_7
    return-void

    :cond_1
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/boJUF/mB/mB/pO/mB/jj;->LA(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :cond_2
    :try_start_1
    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/boJUF/mB/mB/pO/mB/jj;->LA(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/boJUF/mB/mB/pO/mB/jj;->na(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/boJUF/mB/mB/pO/mB/jj;->cp(I)V

    goto :goto_3

    :cond_5
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/boJUF/mB/mB/pO/mB/jj;->On(I)V

    goto :goto_4

    :cond_6
    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/boJUF/mB/mB/pO/mB/jj;->On(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/boJUF/mB/mB/pO/mB/jj;->cp(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_1
    sget-object v1, Lcom/boJUF/mB/mB/tP/uI;->bE:Ljava/lang/String;

    iget-object v1, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/Ke;->On:Lcom/boJUF/mB/mB/pO/Iy/tP/uI;

    const/4 v2, -0x1

    invoke-static {v1, v2, v0}, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->LA(Lcom/boJUF/mB/mB/pO/Iy/tP/uI;ILcom/boJUF/mB/mB/pO/mB/jj;)V

    goto :goto_7

    :pswitch_2
    sget-object v1, Lcom/boJUF/mB/mB/tP/uI;->ac:Ljava/lang/String;

    iget-object v1, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/Ke;->On:Lcom/boJUF/mB/mB/pO/Iy/tP/uI;

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->LA(Lcom/boJUF/mB/mB/pO/Iy/tP/uI;ILcom/boJUF/mB/mB/pO/mB/jj;)V

    goto :goto_7

    :pswitch_3
    sget-object v1, Lcom/boJUF/mB/mB/tP/uI;->oM:Ljava/lang/String;

    iget-object v1, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/Ke;->On:Lcom/boJUF/mB/mB/pO/Iy/tP/uI;

    const/4 v2, 0x2

    invoke-static {v1, v2, v0}, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->LA(Lcom/boJUF/mB/mB/pO/Iy/tP/uI;ILcom/boJUF/mB/mB/pO/mB/jj;)V

    goto :goto_7

    :pswitch_4
    sget-object v1, Lcom/boJUF/mB/mB/tP/uI;->vp:Ljava/lang/String;

    iget-object v1, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/Ke;->On:Lcom/boJUF/mB/mB/pO/Iy/tP/uI;

    const/4 v2, 0x3

    invoke-static {v1, v2, v0}, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->LA(Lcom/boJUF/mB/mB/pO/Iy/tP/uI;ILcom/boJUF/mB/mB/pO/mB/jj;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
