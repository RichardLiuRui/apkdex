.class Lcom/union/sdk/DaMaiPay$1;
.super Ljava/lang/Object;
.source "DaMaiPay.java"

# interfaces
.implements Lcom/boJUF/vvPaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/union/sdk/DaMaiPay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/union/sdk/DaMaiPay;


# direct methods
.method constructor <init>(Lcom/union/sdk/DaMaiPay;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/union/sdk/DaMaiPay$1;->this$0:Lcom/union/sdk/DaMaiPay;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;IILjava/lang/String;)V
    .locals 6
    .param p1, "cpOid"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "detail"    # I
    .param p4, "ext"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x14

    .line 50
    const/16 v0, 0x3e9

    if-ne p2, v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/union/sdk/DaMaiPay$1;->this$0:Lcom/union/sdk/DaMaiPay;

    # getter for: Lcom/union/sdk/DaMaiPay;->m_listener:Lcom/union/sdk/UnionPay$PayCallBackListener;
    invoke-static {v0}, Lcom/union/sdk/DaMaiPay;->access$0(Lcom/union/sdk/DaMaiPay;)Lcom/union/sdk/UnionPay$PayCallBackListener;

    move-result-object v0

    const-string v1, "DaMai"

    const/4 v2, 0x1

    const-string v3, "success"

    invoke-interface {v0, v1, v5, v2, v3}, Lcom/union/sdk/UnionPay$PayCallBackListener;->payResult(Ljava/lang/String;IILjava/lang/String;)V

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/union/sdk/DaMaiPay$1;->this$0:Lcom/union/sdk/DaMaiPay;

    # getter for: Lcom/union/sdk/DaMaiPay;->m_listener:Lcom/union/sdk/UnionPay$PayCallBackListener;
    invoke-static {v0}, Lcom/union/sdk/DaMaiPay;->access$0(Lcom/union/sdk/DaMaiPay;)Lcom/union/sdk/UnionPay$PayCallBackListener;

    move-result-object v0

    const-string v1, "DaMai"

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "failed:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v5, v2, v3}, Lcom/union/sdk/UnionPay$PayCallBackListener;->payResult(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0
.end method
