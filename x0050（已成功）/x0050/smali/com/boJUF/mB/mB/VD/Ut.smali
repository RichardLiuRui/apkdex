.class final Lcom/boJUF/mB/mB/VD/Ut;
.super Landroid/os/Handler;


# instance fields
.field private synthetic LA:Lcom/boJUF/mB/mB/VD/Ke;


# direct methods
.method constructor <init>(Lcom/boJUF/mB/mB/VD/Ke;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/boJUF/mB/mB/VD/Ut;->LA:Lcom/boJUF/mB/mB/VD/Ke;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Ut;->LA:Lcom/boJUF/mB/mB/VD/Ke;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, v2}, Lcom/boJUF/mB/mB/VD/Ke;->LA(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :pswitch_2
    :try_start_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "moid"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "payType"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/boJUF/mB/mB/VD/Ut;->LA:Lcom/boJUF/mB/mB/VD/Ke;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v1, v3, v0}, Lcom/boJUF/mB/mB/VD/Ke;->LA(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "cpOid"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "payType"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/boJUF/mB/mB/VD/Ut;->LA:Lcom/boJUF/mB/mB/VD/Ke;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v1, v3, v0}, Lcom/boJUF/mB/mB/VD/Ke;->cp(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Ut;->LA:Lcom/boJUF/mB/mB/VD/Ke;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/boJUF/mB/mB/VD/Ke;->LA(Lcom/boJUF/mB/mB/VD/Ke;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_0

    const-string v1, "cpOid"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "ext"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/boJUF/mB/mB/VD/Ut;->LA:Lcom/boJUF/mB/mB/VD/Ke;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2, v1, v3, v4, v0}, Lcom/boJUF/mB/mB/VD/Ke;->LA(Lcom/boJUF/mB/mB/VD/Ke;Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    const-string v1, "cpOid"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "text"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "gid"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "ext"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Ut;->LA:Lcom/boJUF/mB/mB/VD/Ke;

    invoke-static/range {v0 .. v5}, Lcom/boJUF/mB/mB/VD/Ke;->LA(Lcom/boJUF/mB/mB/VD/Ke;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
