.class Lorg/cocos2dx/pay/PayInterface$2;
.super Landroid/os/Handler;
.source "PayInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/pay/PayInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/pay/PayInterface;


# direct methods
.method constructor <init>(Lorg/cocos2dx/pay/PayInterface;Landroid/os/Looper;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2dx/pay/PayInterface$2;->this$0:Lorg/cocos2dx/pay/PayInterface;

    .line 475
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 477
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 487
    :goto_0
    return-void

    .line 479
    :pswitch_0
    # getter for: Lorg/cocos2dx/pay/PayInterface;->orderList:Ljava/util/List;
    invoke-static {}, Lorg/cocos2dx/pay/PayInterface;->access$0()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 480
    # getter for: Lorg/cocos2dx/pay/PayInterface;->orderList:Ljava/util/List;
    invoke-static {}, Lorg/cocos2dx/pay/PayInterface;->access$0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 481
    iget-object v0, p0, Lorg/cocos2dx/pay/PayInterface$2;->this$0:Lorg/cocos2dx/pay/PayInterface;

    # invokes: Lorg/cocos2dx/pay/PayInterface;->pay()V
    invoke-static {v0}, Lorg/cocos2dx/pay/PayInterface;->access$1(Lorg/cocos2dx/pay/PayInterface;)V

    goto :goto_0

    .line 483
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/cocos2dx/pay/PayInterface;->access$2(Z)V

    goto :goto_0

    .line 477
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
