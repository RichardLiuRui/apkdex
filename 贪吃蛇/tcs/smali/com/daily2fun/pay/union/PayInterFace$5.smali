.class Lcom/daily2fun/pay/union/PayInterFace$5;
.super Lorg/yummysdk/lib/YMBillingCallback;
.source "PayInterFace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/daily2fun/pay/union/PayInterFace;->initMiFUPay(Landroid/app/Activity;Ljava/util/Map;)V
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
    iput-object p1, p0, Lcom/daily2fun/pay/union/PayInterFace$5;->this$0:Lcom/daily2fun/pay/union/PayInterFace;

    .line 73
    invoke-direct {p0}, Lorg/yummysdk/lib/YMBillingCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;)V
    .locals 3
    .param p1, "chargepoint"    # Ljava/lang/String;

    .prologue
    .line 93
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/daily2fun/pay/union/PayInterFace;->access$6(Z)V

    .line 94
    iget-object v0, p0, Lcom/daily2fun/pay/union/PayInterFace$5;->this$0:Lcom/daily2fun/pay/union/PayInterFace;

    const/4 v1, 0x0

    const-string v2, ""

    # invokes: Lcom/daily2fun/pay/union/PayInterFace;->showResult(ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p1, v2}, Lcom/daily2fun/pay/union/PayInterFace;->access$1(Lcom/daily2fun/pay/union/PayInterFace;ZLjava/lang/String;Ljava/lang/String;)V

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u7c73\u99a5\u8ba1\u8d39\u53d6\u6d88("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/daily2fun/pay/union/Log;->I(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public onFail(Ljava/lang/String;I)V
    .locals 4
    .param p1, "chargepoint"    # Ljava/lang/String;
    .param p2, "code"    # I

    .prologue
    .line 100
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/daily2fun/pay/union/PayInterFace;->access$6(Z)V

    .line 101
    iget-object v0, p0, Lcom/daily2fun/pay/union/PayInterFace$5;->this$0:Lcom/daily2fun/pay/union/PayInterFace;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/daily2fun/pay/union/PayInterFace;->showResult(ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p1, v2}, Lcom/daily2fun/pay/union/PayInterFace;->access$1(Lcom/daily2fun/pay/union/PayInterFace;ZLjava/lang/String;Ljava/lang/String;)V

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u7c73\u99a5\u8ba1\u8d39\u5931\u8d25("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/daily2fun/pay/union/Log;->E(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public onInitFail(Ljava/lang/String;I)V
    .locals 2
    .param p1, "extra"    # Ljava/lang/String;
    .param p2, "code"    # I

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u7c73\u99a5\u521d\u59cb\u5316\u5931\u8d25: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " extra: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/daily2fun/pay/union/Log;->I(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public onInitSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "extra"    # Ljava/lang/String;

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u7c73\u99a5\u521d\u59cb\u5316\u6210\u529f extra: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/daily2fun/pay/union/Log;->I(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "chargepoint"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 86
    invoke-static {v2}, Lcom/daily2fun/pay/union/PayInterFace;->access$6(Z)V

    .line 87
    iget-object v0, p0, Lcom/daily2fun/pay/union/PayInterFace$5;->this$0:Lcom/daily2fun/pay/union/PayInterFace;

    const-string v1, ""

    # invokes: Lcom/daily2fun/pay/union/PayInterFace;->showResult(ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v2, p1, v1}, Lcom/daily2fun/pay/union/PayInterFace;->access$1(Lcom/daily2fun/pay/union/PayInterFace;ZLjava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u7c73\u99a5\u8ba1\u8d39\u6210\u529f("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/daily2fun/pay/union/Log;->I(Ljava/lang/String;)V

    .line 89
    return-void
.end method
