.class final Lcom/boJUF/mB/mB/VD/uH;
.super Landroid/os/Handler;


# instance fields
.field private synthetic LA:Lcom/boJUF/mB/mB/VD/vG;


# direct methods
.method constructor <init>(Lcom/boJUF/mB/mB/VD/vG;)V
    .locals 0

    iput-object p1, p0, Lcom/boJUF/mB/mB/VD/uH;->LA:Lcom/boJUF/mB/mB/VD/vG;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/uH;->LA:Lcom/boJUF/mB/mB/VD/vG;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/boJUF/mB/mB/VD/vG;->LA(Lcom/boJUF/mB/mB/VD/vG;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/uH;->LA:Lcom/boJUF/mB/mB/VD/vG;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/boJUF/mB/mB/VD/vG;->LA(Lcom/boJUF/mB/mB/VD/vG;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/uH;->LA:Lcom/boJUF/mB/mB/VD/vG;

    invoke-static {v0}, Lcom/boJUF/mB/mB/VD/vG;->LA(Lcom/boJUF/mB/mB/VD/vG;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/boJUF/mB/mB/VD/Op;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/VD/Op;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/boJUF/mB/mB/VD/Op;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
