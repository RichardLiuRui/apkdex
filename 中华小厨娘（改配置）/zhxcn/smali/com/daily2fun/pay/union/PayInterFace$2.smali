.class Lcom/daily2fun/pay/union/PayInterFace$2;
.super Landroid/os/Handler;
.source "PayInterFace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/daily2fun/pay/union/PayInterFace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/daily2fun/pay/union/PayInterFace;


# direct methods
.method constructor <init>(Lcom/daily2fun/pay/union/PayInterFace;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/daily2fun/pay/union/PayInterFace$2;->this$0:Lcom/daily2fun/pay/union/PayInterFace;

    .line 213
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 217
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_1

    .line 218
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 219
    .local v0, "data":Landroid/os/Bundle;
    const-string v3, "errcode"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 220
    .local v1, "errcode":I
    const-string v3, "extdata"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "extdata":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "errcode"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/daily2fun/pay/union/Log;->E(Ljava/lang/String;)V

    .line 222
    const/16 v3, 0xfa0

    if-ne v1, v3, :cond_0

    .line 223
    invoke-static {v6}, Lcom/daily2fun/pay/union/PayInterFace;->access$2(Z)V

    .line 224
    iget-object v3, p0, Lcom/daily2fun/pay/union/PayInterFace$2;->this$0:Lcom/daily2fun/pay/union/PayInterFace;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/daily2fun/pay/union/PayInterFace;->showResult(ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v6, v2, v4}, Lcom/daily2fun/pay/union/PayInterFace;->access$1(Lcom/daily2fun/pay/union/PayInterFace;ZLjava/lang/String;Ljava/lang/String;)V

    .line 239
    :goto_0
    return-void

    .line 226
    :cond_0
    invoke-static {v6}, Lcom/daily2fun/pay/union/PayInterFace;->access$2(Z)V

    .line 227
    iget-object v3, p0, Lcom/daily2fun/pay/union/PayInterFace$2;->this$0:Lcom/daily2fun/pay/union/PayInterFace;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/daily2fun/pay/union/PayInterFace;->showResult(ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v7, v2, v4}, Lcom/daily2fun/pay/union/PayInterFace;->access$1(Lcom/daily2fun/pay/union/PayInterFace;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 231
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "errcode":I
    .end local v2    # "extdata":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 232
    .restart local v0    # "data":Landroid/os/Bundle;
    const-string v3, "errcode"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 233
    .restart local v1    # "errcode":I
    const-string v3, "extdata"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 234
    .restart local v2    # "extdata":Ljava/lang/String;
    invoke-static {v6}, Lcom/daily2fun/pay/union/PayInterFace;->access$2(Z)V

    .line 235
    iget-object v3, p0, Lcom/daily2fun/pay/union/PayInterFace$2;->this$0:Lcom/daily2fun/pay/union/PayInterFace;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/daily2fun/pay/union/PayInterFace;->showResult(ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v7, v2, v4}, Lcom/daily2fun/pay/union/PayInterFace;->access$1(Lcom/daily2fun/pay/union/PayInterFace;ZLjava/lang/String;Ljava/lang/String;)V

    .line 236
    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "errcode"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/daily2fun/pay/union/Log;->E(Ljava/lang/String;)V

    goto :goto_0
.end method
