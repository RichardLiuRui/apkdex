.class Lcom/union/sdk/XinPay$1;
.super Ljava/lang/Object;
.source "XinPay.java"

# interfaces
.implements Lcom/zxhykj/xinzf/ZXResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/union/sdk/XinPay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/union/sdk/XinPay;


# direct methods
.method constructor <init>(Lcom/union/sdk/XinPay;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/union/sdk/XinPay$1;->this$0:Lcom/union/sdk/XinPay;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFeeResult(ILjava/lang/String;)V
    .locals 5
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x14

    .line 38
    if-nez p1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/union/sdk/XinPay$1;->this$0:Lcom/union/sdk/XinPay;

    # getter for: Lcom/union/sdk/XinPay;->m_listener:Lcom/union/sdk/UnionPay$PayCallBackListener;
    invoke-static {v0}, Lcom/union/sdk/XinPay;->access$0(Lcom/union/sdk/XinPay;)Lcom/union/sdk/UnionPay$PayCallBackListener;

    move-result-object v0

    const-string v1, "XinPay"

    const/4 v2, 0x1

    const-string v3, "success"

    invoke-interface {v0, v1, v4, v2, v3}, Lcom/union/sdk/UnionPay$PayCallBackListener;->payResult(Ljava/lang/String;IILjava/lang/String;)V

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/union/sdk/XinPay$1;->this$0:Lcom/union/sdk/XinPay;

    # getter for: Lcom/union/sdk/XinPay;->m_listener:Lcom/union/sdk/UnionPay$PayCallBackListener;
    invoke-static {v0}, Lcom/union/sdk/XinPay;->access$0(Lcom/union/sdk/XinPay;)Lcom/union/sdk/UnionPay$PayCallBackListener;

    move-result-object v0

    const-string v1, "XinPay"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v4, v2, p2}, Lcom/union/sdk/UnionPay$PayCallBackListener;->payResult(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0
.end method
