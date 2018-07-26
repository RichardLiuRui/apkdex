.class public final enum Lcom/zy/hez/ZYResult;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zy/hez/ZYResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CLICKOFFTEN:Lcom/zy/hez/ZYResult;

.field private static final synthetic ENUM$VALUES:[Lcom/zy/hez/ZYResult;

.field public static final enum FAIL:Lcom/zy/hez/ZYResult;

.field public static final enum FORBID:Lcom/zy/hez/ZYResult;

.field public static final enum ILLEGAL:Lcom/zy/hez/ZYResult;

.field public static final enum NONESERVICE:Lcom/zy/hez/ZYResult;

.field public static final enum PAYERROR:Lcom/zy/hez/ZYResult;

.field public static final enum SERVERERROR:Lcom/zy/hez/ZYResult;

.field public static final enum SUCCESS:Lcom/zy/hez/ZYResult;


# instance fields
.field public msg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/zy/hez/ZYResult;

    const-string v1, "SUCCESS"

    const-string v2, "\u8ba1\u8d39\u6210\u529f"

    invoke-direct {v0, v1, v4, v2}, Lcom/zy/hez/ZYResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zy/hez/ZYResult;->SUCCESS:Lcom/zy/hez/ZYResult;

    new-instance v0, Lcom/zy/hez/ZYResult;

    const-string v1, "ILLEGAL"

    const-string v2, "\u9a8c\u8bc1\u5931\u8d25"

    invoke-direct {v0, v1, v5, v2}, Lcom/zy/hez/ZYResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zy/hez/ZYResult;->ILLEGAL:Lcom/zy/hez/ZYResult;

    new-instance v0, Lcom/zy/hez/ZYResult;

    const-string v1, "FORBID"

    const-string v2, "\u7528\u6237\u9ed1\u540d\u5355\u975e\u6cd5"

    invoke-direct {v0, v1, v6, v2}, Lcom/zy/hez/ZYResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zy/hez/ZYResult;->FORBID:Lcom/zy/hez/ZYResult;

    new-instance v0, Lcom/zy/hez/ZYResult;

    const-string v1, "NONESERVICE"

    const-string v2, "\u65e0\u8ba1\u8d39\u901a\u9053"

    invoke-direct {v0, v1, v7, v2}, Lcom/zy/hez/ZYResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zy/hez/ZYResult;->NONESERVICE:Lcom/zy/hez/ZYResult;

    new-instance v0, Lcom/zy/hez/ZYResult;

    const-string v1, "SERVERERROR"

    const-string v2, "\u670d\u52a1\u5668\u54cd\u5e94\u5931\u8d25"

    invoke-direct {v0, v1, v8, v2}, Lcom/zy/hez/ZYResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zy/hez/ZYResult;->SERVERERROR:Lcom/zy/hez/ZYResult;

    new-instance v0, Lcom/zy/hez/ZYResult;

    const-string v1, "PAYERROR"

    const/4 v2, 0x5

    const-string v3, "\u652f\u4ed8\u9519\u8bef"

    invoke-direct {v0, v1, v2, v3}, Lcom/zy/hez/ZYResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zy/hez/ZYResult;->PAYERROR:Lcom/zy/hez/ZYResult;

    new-instance v0, Lcom/zy/hez/ZYResult;

    const-string v1, "CLICKOFFTEN"

    const/4 v2, 0x6

    const-string v3, "\u70b9\u51fb\u592a\u9891\u7e41"

    invoke-direct {v0, v1, v2, v3}, Lcom/zy/hez/ZYResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zy/hez/ZYResult;->CLICKOFFTEN:Lcom/zy/hez/ZYResult;

    new-instance v0, Lcom/zy/hez/ZYResult;

    const-string v1, "FAIL"

    const/4 v2, 0x7

    const-string v3, "\u8ba1\u8d39\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3}, Lcom/zy/hez/ZYResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zy/hez/ZYResult;->FAIL:Lcom/zy/hez/ZYResult;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/zy/hez/ZYResult;

    sget-object v1, Lcom/zy/hez/ZYResult;->SUCCESS:Lcom/zy/hez/ZYResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/zy/hez/ZYResult;->ILLEGAL:Lcom/zy/hez/ZYResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/zy/hez/ZYResult;->FORBID:Lcom/zy/hez/ZYResult;

    aput-object v1, v0, v6

    sget-object v1, Lcom/zy/hez/ZYResult;->NONESERVICE:Lcom/zy/hez/ZYResult;

    aput-object v1, v0, v7

    sget-object v1, Lcom/zy/hez/ZYResult;->SERVERERROR:Lcom/zy/hez/ZYResult;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/zy/hez/ZYResult;->PAYERROR:Lcom/zy/hez/ZYResult;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/zy/hez/ZYResult;->CLICKOFFTEN:Lcom/zy/hez/ZYResult;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/zy/hez/ZYResult;->FAIL:Lcom/zy/hez/ZYResult;

    aput-object v2, v0, v1

    sput-object v0, Lcom/zy/hez/ZYResult;->ENUM$VALUES:[Lcom/zy/hez/ZYResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/zy/hez/ZYResult;->msg:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zy/hez/ZYResult;
    .locals 1

    const-class v0, Lcom/zy/hez/ZYResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zy/hez/ZYResult;

    return-object v0
.end method

.method public static values()[Lcom/zy/hez/ZYResult;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/zy/hez/ZYResult;->ENUM$VALUES:[Lcom/zy/hez/ZYResult;

    array-length v1, v0

    new-array v2, v1, [Lcom/zy/hez/ZYResult;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
