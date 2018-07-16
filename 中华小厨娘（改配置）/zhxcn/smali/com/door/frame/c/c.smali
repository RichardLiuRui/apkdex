.class final Lcom/door/frame/c/c;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/door/frame/c/a;


# direct methods
.method constructor <init>(Lcom/door/frame/c/a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/door/frame/c/c;->a:Lcom/door/frame/c/a;

    .line 621
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 626
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v0, :cond_1

    .line 627
    iget-object v2, p0, Lcom/door/frame/c/c;->a:Lcom/door/frame/c/a;

    invoke-static {}, Lcom/door/frame/c/a;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/door/frame/c/i;

    invoke-static {v2, v0}, Lcom/door/frame/c/a;->a(Lcom/door/frame/c/a;Lcom/door/frame/c/i;)V

    .line 788
    :cond_0
    :goto_0
    return-void

    .line 628
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 629
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 631
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v0, :cond_2

    :goto_1
    invoke-static {v0}, Lcom/door/frame/c/a;->a(Z)V

    .line 632
    iget-object v1, p0, Lcom/door/frame/c/c;->a:Lcom/door/frame/c/a;

    invoke-static {}, Lcom/door/frame/c/a;->g()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v0, v3}, Lcom/door/frame/c/a;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 631
    goto :goto_1

    .line 633
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 634
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 636
    const-string v1, "subtype"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 638
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 640
    :pswitch_1
    const-string v1, "tid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 641
    const-string v1, "odno"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 642
    const-string v1, "order"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 664
    :pswitch_2
    const-string v1, "tid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 665
    const-string v1, "order"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 666
    const-string v1, "odno"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 667
    const-string v1, "paycode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 689
    :pswitch_3
    const-string v1, "tid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 690
    const-string v1, "order"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 691
    const-string v1, "odno"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 692
    const-string v1, "paycode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 693
    const-string v1, "price"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    goto :goto_0

    .line 714
    :pswitch_4
    const-string v1, "tid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 715
    const-string v1, "odno"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 717
    const-string v1, "pas"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 718
    const-string v1, "paycode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 740
    :pswitch_5
    const-string v1, "tid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 741
    const-string v1, "odno"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 742
    const-string v1, "paycode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 765
    :pswitch_6
    const-string v1, "tid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 766
    const-string v1, "odno"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 767
    const-string v1, "exdata"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 768
    const-string v1, "price"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 638
    :pswitch_data_0
    .packed-switch 0xb4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
