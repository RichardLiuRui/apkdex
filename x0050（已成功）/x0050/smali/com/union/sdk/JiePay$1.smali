.class Lcom/union/sdk/JiePay$1;
.super Ljava/lang/Object;
.source "JiePay.java"

# interfaces
.implements Lcom/zy/hez/ZYResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/union/sdk/JiePay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$zy$hez$ZYResult:[I


# instance fields
.field final synthetic this$0:Lcom/union/sdk/JiePay;


# direct methods
.method static synthetic $SWITCH_TABLE$com$zy$hez$ZYResult()[I
    .locals 3

    .prologue
    .line 35
    sget-object v0, Lcom/union/sdk/JiePay$1;->$SWITCH_TABLE$com$zy$hez$ZYResult:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/zy/hez/ZYResult;->values()[Lcom/zy/hez/ZYResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/zy/hez/ZYResult;->CLICKOFFTEN:Lcom/zy/hez/ZYResult;

    invoke-virtual {v1}, Lcom/zy/hez/ZYResult;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_1
    :try_start_1
    sget-object v1, Lcom/zy/hez/ZYResult;->FAIL:Lcom/zy/hez/ZYResult;

    invoke-virtual {v1}, Lcom/zy/hez/ZYResult;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_2
    :try_start_2
    sget-object v1, Lcom/zy/hez/ZYResult;->FORBID:Lcom/zy/hez/ZYResult;

    invoke-virtual {v1}, Lcom/zy/hez/ZYResult;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_3
    :try_start_3
    sget-object v1, Lcom/zy/hez/ZYResult;->ILLEGAL:Lcom/zy/hez/ZYResult;

    invoke-virtual {v1}, Lcom/zy/hez/ZYResult;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_4
    :try_start_4
    sget-object v1, Lcom/zy/hez/ZYResult;->NONESERVICE:Lcom/zy/hez/ZYResult;

    invoke-virtual {v1}, Lcom/zy/hez/ZYResult;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    :try_start_5
    sget-object v1, Lcom/zy/hez/ZYResult;->PAYERROR:Lcom/zy/hez/ZYResult;

    invoke-virtual {v1}, Lcom/zy/hez/ZYResult;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_6
    :try_start_6
    sget-object v1, Lcom/zy/hez/ZYResult;->SERVERERROR:Lcom/zy/hez/ZYResult;

    invoke-virtual {v1}, Lcom/zy/hez/ZYResult;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_7
    :try_start_7
    sget-object v1, Lcom/zy/hez/ZYResult;->SUCCESS:Lcom/zy/hez/ZYResult;

    invoke-virtual {v1}, Lcom/zy/hez/ZYResult;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_8
    sput-object v0, Lcom/union/sdk/JiePay$1;->$SWITCH_TABLE$com$zy$hez$ZYResult:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method constructor <init>(Lcom/union/sdk/JiePay;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/union/sdk/JiePay$1;->this$0:Lcom/union/sdk/JiePay;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/zy/hez/ZYResult;I)V
    .locals 5
    .param p1, "payResult"    # Lcom/zy/hez/ZYResult;
    .param p2, "feeCode"    # I

    .prologue
    const/16 v4, 0x14

    .line 38
    invoke-static {}, Lcom/union/sdk/JiePay$1;->$SWITCH_TABLE$com$zy$hez$ZYResult()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/zy/hez/ZYResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 45
    iget-object v0, p0, Lcom/union/sdk/JiePay$1;->this$0:Lcom/union/sdk/JiePay;

    # getter for: Lcom/union/sdk/JiePay;->m_listener:Lcom/union/sdk/UnionPay$PayCallBackListener;
    invoke-static {v0}, Lcom/union/sdk/JiePay;->access$0(Lcom/union/sdk/JiePay;)Lcom/union/sdk/UnionPay$PayCallBackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/union/sdk/JiePay$1;->this$0:Lcom/union/sdk/JiePay;

    # getter for: Lcom/union/sdk/JiePay;->m_listener:Lcom/union/sdk/UnionPay$PayCallBackListener;
    invoke-static {v0}, Lcom/union/sdk/JiePay;->access$0(Lcom/union/sdk/JiePay;)Lcom/union/sdk/UnionPay$PayCallBackListener;

    move-result-object v0

    const-string v1, "JiePay"

    const/4 v2, 0x2

    const-string v3, "failed"

    invoke-interface {v0, v1, v4, v2, v3}, Lcom/union/sdk/UnionPay$PayCallBackListener;->payResult(Ljava/lang/String;IILjava/lang/String;)V

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 40
    :pswitch_0
    iget-object v0, p0, Lcom/union/sdk/JiePay$1;->this$0:Lcom/union/sdk/JiePay;

    # getter for: Lcom/union/sdk/JiePay;->m_listener:Lcom/union/sdk/UnionPay$PayCallBackListener;
    invoke-static {v0}, Lcom/union/sdk/JiePay;->access$0(Lcom/union/sdk/JiePay;)Lcom/union/sdk/UnionPay$PayCallBackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/union/sdk/JiePay$1;->this$0:Lcom/union/sdk/JiePay;

    # getter for: Lcom/union/sdk/JiePay;->m_listener:Lcom/union/sdk/UnionPay$PayCallBackListener;
    invoke-static {v0}, Lcom/union/sdk/JiePay;->access$0(Lcom/union/sdk/JiePay;)Lcom/union/sdk/UnionPay$PayCallBackListener;

    move-result-object v0

    const-string v1, "JiePay"

    const/4 v2, 0x1

    const-string v3, "success"

    invoke-interface {v0, v1, v4, v2, v3}, Lcom/union/sdk/UnionPay$PayCallBackListener;->payResult(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
