.class Lcom/daily2fun/pay/union/PayInterFace$1;
.super Ljava/lang/Object;
.source "PayInterFace.java"

# interfaces
.implements Lorg/zzf/core/ZhangPayCallback;


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

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZhangPayBuyProductFaild(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "priciePointId"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 206
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/daily2fun/pay/union/PayInterFace;->access$0(Z)V

    .line 207
    iget-object v0, p0, Lcom/daily2fun/pay/union/PayInterFace$1;->this$0:Lcom/daily2fun/pay/union/PayInterFace;

    const/4 v1, 0x0

    # invokes: Lcom/daily2fun/pay/union/PayInterFace;->showResult(ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p1, p2}, Lcom/daily2fun/pay/union/PayInterFace;->access$1(Lcom/daily2fun/pay/union/PayInterFace;ZLjava/lang/String;Ljava/lang/String;)V

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/daily2fun/pay/union/Log;->E(Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public onZhangPayBuyProductOK(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "priciePointId"    # Ljava/lang/String;
    .param p2, "okCode"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 198
    invoke-static {v1}, Lcom/daily2fun/pay/union/PayInterFace;->access$0(Z)V

    .line 199
    iget-object v0, p0, Lcom/daily2fun/pay/union/PayInterFace$1;->this$0:Lcom/daily2fun/pay/union/PayInterFace;

    # invokes: Lcom/daily2fun/pay/union/PayInterFace;->showResult(ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p1, p2}, Lcom/daily2fun/pay/union/PayInterFace;->access$1(Lcom/daily2fun/pay/union/PayInterFace;ZLjava/lang/String;Ljava/lang/String;)V

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/daily2fun/pay/union/Log;->I(Ljava/lang/String;)V

    .line 201
    return-void
.end method
