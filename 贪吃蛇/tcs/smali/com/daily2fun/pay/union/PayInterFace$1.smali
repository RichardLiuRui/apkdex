.class Lcom/daily2fun/pay/union/PayInterFace$1;
.super Ljava/lang/Object;
.source "PayInterFace.java"

# interfaces
.implements Lcom/mj/jar/pay/BillingListener;


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
    iput-object p1, p0, Lcom/daily2fun/pay/union/PayInterFace$1;->this$0:Lcom/daily2fun/pay/union/PayInterFace;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingResult(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 124
    invoke-static {v3}, Lcom/daily2fun/pay/union/PayInterFace;->access$0(Z)V

    .line 125
    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u7389\u5cf0\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/daily2fun/pay/union/Log;->I(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/daily2fun/pay/union/PayInterFace$1;->this$0:Lcom/daily2fun/pay/union/PayInterFace;

    const-string v1, ""

    const-string v2, ""

    # invokes: Lcom/daily2fun/pay/union/PayInterFace;->showResult(ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v3, v1, v2}, Lcom/daily2fun/pay/union/PayInterFace;->access$1(Lcom/daily2fun/pay/union/PayInterFace;ZLjava/lang/String;Ljava/lang/String;)V

    .line 132
    :goto_0
    return-void

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u7389\u5cf0\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/daily2fun/pay/union/Log;->E(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/daily2fun/pay/union/PayInterFace$1;->this$0:Lcom/daily2fun/pay/union/PayInterFace;

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, ""

    # invokes: Lcom/daily2fun/pay/union/PayInterFace;->showResult(ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/daily2fun/pay/union/PayInterFace;->access$1(Lcom/daily2fun/pay/union/PayInterFace;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onInitResult(I)V
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u7389\u5cf0\u521d\u59cb\u5316\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/daily2fun/pay/union/Log;->I(Ljava/lang/String;)V

    .line 120
    return-void
.end method
