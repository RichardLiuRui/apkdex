.class public Lcom/union/sdk/DaMaiPay;
.super Ljava/lang/Object;
.source "DaMaiPay.java"


# static fields
.field private static final SDKNAME:Ljava/lang/String; = "DaMai"


# instance fields
.field private m_listener:Lcom/union/sdk/UnionPay$PayCallBackListener;

.field m_payListener:Lcom/boJUF/vvPaListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/union/sdk/DaMaiPay;->m_listener:Lcom/union/sdk/UnionPay$PayCallBackListener;

    .line 47
    new-instance v0, Lcom/union/sdk/DaMaiPay$1;

    invoke-direct {v0, p0}, Lcom/union/sdk/DaMaiPay$1;-><init>(Lcom/union/sdk/DaMaiPay;)V

    iput-object v0, p0, Lcom/union/sdk/DaMaiPay;->m_payListener:Lcom/boJUF/vvPaListener;

    .line 14
    return-void
.end method

.method static synthetic access$0(Lcom/union/sdk/DaMaiPay;)Lcom/union/sdk/UnionPay$PayCallBackListener;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/union/sdk/DaMaiPay;->m_listener:Lcom/union/sdk/UnionPay$PayCallBackListener;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/app/Activity;)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 26
    invoke-static {}, Lcom/boJUF/Kuox;->getInstance()Lcom/boJUF/Kuox;

    move-result-object v0

    const-string v1, "9DCDdw80r13qp23utkrB98lg"

    sget-object v2, Lcom/union/sdk/UnionPay;->CHANNEL:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/boJUF/Kuox;->init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public onExit()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public pay(Landroid/content/Context;ILcom/union/sdk/UnionPay$PayCallBackListener;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemId"    # I
    .param p3, "listener"    # Lcom/union/sdk/UnionPay$PayCallBackListener;

    .prologue
    .line 30
    iput-object p3, p0, Lcom/union/sdk/DaMaiPay;->m_listener:Lcom/union/sdk/UnionPay$PayCallBackListener;

    .line 38
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 39
    .local v6, "date":Ljava/util/Date;
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyyMMdd"

    invoke-direct {v9, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 40
    .local v9, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v9, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 41
    .local v10, "str":Ljava/lang/String;
    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    .line 42
    .local v7, "random":Ljava/util/Random;
    invoke-virtual {v7}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    const-wide v4, 0x40f5f90000000000L    # 90000.0

    mul-double/2addr v0, v4

    double-to-int v0, v0

    add-int/lit16 v8, v0, 0x2710

    .line 43
    .local v8, "rannum":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, "orderId":Ljava/lang/String;
    invoke-static {}, Lcom/boJUF/Kuox;->getInstance()Lcom/boJUF/Kuox;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    const-string v2, "kdh8dardxqA7diD236a5ednA"

    const-string v4, "sf2017"

    iget-object v5, p0, Lcom/union/sdk/DaMaiPay;->m_payListener:Lcom/boJUF/vvPaListener;

    invoke-virtual/range {v0 .. v5}, Lcom/boJUF/Kuox;->star(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/boJUF/vvPaListener;)V

    .line 45
    return-void
.end method
