.class Lorg/cocos2dx/cpp/AppActivity$1;
.super Landroid/os/Handler;
.source "AppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/cpp/AppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/cpp/AppActivity;


# direct methods
.method constructor <init>(Lorg/cocos2dx/cpp/AppActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2dx/cpp/AppActivity$1;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    .line 109
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v5, 0xbb8

    const/16 v4, 0xf

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 114
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_2

    .line 116
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    .line 117
    .local v6, "data":Landroid/os/Bundle;
    const-string v0, "errcode"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 118
    .local v7, "errcode":I
    const-string v0, "extdata"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 120
    .local v8, "extdata":Ljava/lang/String;
    const/16 v0, 0xfa0

    if-ne v7, v0, :cond_1

    .line 121
    iget-object v0, p0, Lorg/cocos2dx/cpp/AppActivity$1;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    sget v1, Lorg/cocos2dx/cpp/AppActivity;->_payId:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/cocos2dx/cpp/AppActivity;->showPurchaseData(II)V

    .line 122
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/cocos2dx/cpp/AppActivity;->sendChargeResult(I)V

    .line 123
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lorg/cocos2dx/cpp/AppActivity;->_payId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/cocos2dx/cpp/AppActivity;->priceList:[I

    sget v3, Lorg/cocos2dx/cpp/AppActivity;->_payId:I

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/lit8 v2, v2, 0x64

    int-to-double v2, v2

    const-string v4, "CNY"

    .line 124
    const-string v5, "qipa"

    .line 123
    invoke-static/range {v0 .. v5}, Lcom/dataeye/DCVirtualCurrency;->paymentSuccess(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lorg/cocos2dx/cpp/AppActivity$1;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    sget v1, Lorg/cocos2dx/cpp/AppActivity;->_payId:I

    invoke-virtual {v0, v1, v3}, Lorg/cocos2dx/cpp/AppActivity;->showPurchaseData(II)V

    .line 127
    invoke-static {v2}, Lorg/cocos2dx/cpp/AppActivity;->sendChargeResult(I)V

    .line 128
    sget v0, Lorg/cocos2dx/cpp/AppActivity;->_payId:I

    if-ne v0, v4, :cond_0

    .line 130
    iget-object v0, p0, Lorg/cocos2dx/cpp/AppActivity$1;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    # invokes: Lorg/cocos2dx/cpp/AppActivity;->pay(I)V
    invoke-static {v0, v5}, Lorg/cocos2dx/cpp/AppActivity;->access$0(Lorg/cocos2dx/cpp/AppActivity;I)V

    goto :goto_0

    .line 134
    .end local v6    # "data":Landroid/os/Bundle;
    .end local v7    # "errcode":I
    .end local v8    # "extdata":Ljava/lang/String;
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    .line 136
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    .line 137
    .restart local v6    # "data":Landroid/os/Bundle;
    const-string v0, "errcode"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 138
    .restart local v7    # "errcode":I
    const-string v0, "extdata"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 140
    .restart local v8    # "extdata":Ljava/lang/String;
    iget-object v0, p0, Lorg/cocos2dx/cpp/AppActivity$1;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    sget v1, Lorg/cocos2dx/cpp/AppActivity;->_payId:I

    invoke-virtual {v0, v1, v3}, Lorg/cocos2dx/cpp/AppActivity;->showPurchaseData(II)V

    .line 141
    invoke-static {v2}, Lorg/cocos2dx/cpp/AppActivity;->sendChargeResult(I)V

    .line 142
    sget v0, Lorg/cocos2dx/cpp/AppActivity;->_payId:I

    if-ne v0, v4, :cond_0

    .line 144
    iget-object v0, p0, Lorg/cocos2dx/cpp/AppActivity$1;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    # invokes: Lorg/cocos2dx/cpp/AppActivity;->pay(I)V
    invoke-static {v0, v5}, Lorg/cocos2dx/cpp/AppActivity;->access$0(Lorg/cocos2dx/cpp/AppActivity;I)V

    goto :goto_0

    .line 150
    .end local v6    # "data":Landroid/os/Bundle;
    .end local v7    # "errcode":I
    .end local v8    # "extdata":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    .line 151
    .restart local v6    # "data":Landroid/os/Bundle;
    const-string v0, "errcode"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 152
    .restart local v7    # "errcode":I
    const-string v0, "extdata"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 154
    .restart local v8    # "extdata":Ljava/lang/String;
    iget-object v0, p0, Lorg/cocos2dx/cpp/AppActivity$1;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    sget v1, Lorg/cocos2dx/cpp/AppActivity;->_payId:I

    invoke-virtual {v0, v1, v3}, Lorg/cocos2dx/cpp/AppActivity;->showPurchaseData(II)V

    .line 155
    invoke-static {v2}, Lorg/cocos2dx/cpp/AppActivity;->sendChargeResult(I)V

    .line 156
    sget v0, Lorg/cocos2dx/cpp/AppActivity;->_payId:I

    if-ne v0, v4, :cond_0

    .line 158
    iget-object v0, p0, Lorg/cocos2dx/cpp/AppActivity$1;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    # invokes: Lorg/cocos2dx/cpp/AppActivity;->pay(I)V
    invoke-static {v0, v5}, Lorg/cocos2dx/cpp/AppActivity;->access$0(Lorg/cocos2dx/cpp/AppActivity;I)V

    goto :goto_0
.end method
