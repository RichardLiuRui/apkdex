.class Lcom/shunpay210/sdk/ShunPay210$4;
.super Ljava/lang/Object;
.source "ShunPay210.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shunpay210/sdk/ShunPay210;->showConfirmDlg(Landroid/content/Context;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$itemId:I

.field private final synthetic val$price:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/shunpay210/sdk/ShunPay210$4;->val$itemId:I

    iput p2, p0, Lcom/shunpay210/sdk/ShunPay210$4;->val$price:I

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 133
    # getter for: Lcom/shunpay210/sdk/ShunPay210;->m_prepareListener:Lcom/shunpay210/sdk/ShunPay210$PayPrepareListener;
    invoke-static {}, Lcom/shunpay210/sdk/ShunPay210;->access$2()Lcom/shunpay210/sdk/ShunPay210$PayPrepareListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 134
    iget v0, p0, Lcom/shunpay210/sdk/ShunPay210$4;->val$itemId:I

    iget v1, p0, Lcom/shunpay210/sdk/ShunPay210$4;->val$price:I

    invoke-static {v0, v1}, Lcom/shunpay210/sdk/CppAdapter210;->pay(II)V

    .line 137
    :goto_0
    return-void

    .line 136
    :cond_0
    # getter for: Lcom/shunpay210/sdk/ShunPay210;->m_prepareListener:Lcom/shunpay210/sdk/ShunPay210$PayPrepareListener;
    invoke-static {}, Lcom/shunpay210/sdk/ShunPay210;->access$2()Lcom/shunpay210/sdk/ShunPay210$PayPrepareListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/shunpay210/sdk/ShunPay210$PayPrepareListener;->onPreparePay(Z)V

    goto :goto_0
.end method
