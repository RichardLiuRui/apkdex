.class Lcom/union/sdk/UnionPayApplication$1;
.super Ljava/lang/Object;
.source "UnionPayApplication.java"

# interfaces
.implements Lcom/shunpay210/sdk/ShunPay210$LoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/union/sdk/UnionPayApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/union/sdk/UnionPayApplication;


# direct methods
.method constructor <init>(Lcom/union/sdk/UnionPayApplication;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/union/sdk/UnionPayApplication$1;->this$0:Lcom/union/sdk/UnionPayApplication;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginResult(I)V
    .locals 4
    .param p1, "result"    # I

    .prologue
    const/4 v3, 0x1

    .line 68
    if-ne p1, v3, :cond_0

    .line 69
    invoke-static {}, Lcom/union/sdk/UnionPay;->getInstance()Lcom/union/sdk/UnionPay;

    move-result-object v0

    iget-object v1, p0, Lcom/union/sdk/UnionPayApplication$1;->this$0:Lcom/union/sdk/UnionPayApplication;

    invoke-virtual {v1}, Lcom/union/sdk/UnionPayApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/union/sdk/UnionPay;->payLoginBack(Landroid/content/Context;ILcom/union/sdk/UnionPay$PayListener;)V

    .line 71
    :cond_0
    return-void
.end method
