.class public final enum Lcom/boJUF/mB/mB/VD/mB/tQ;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic IL:[Lcom/boJUF/mB/mB/VD/mB/tQ;

.field public static final enum LA:Lcom/boJUF/mB/mB/VD/mB/tQ;

.field public static final enum On:Lcom/boJUF/mB/mB/VD/mB/tQ;

.field public static final enum TP:Lcom/boJUF/mB/mB/VD/mB/tQ;

.field public static final enum cp:Lcom/boJUF/mB/mB/VD/mB/tQ;

.field public static final enum na:Lcom/boJUF/mB/mB/VD/mB/tQ;

.field public static final enum oC:Lcom/boJUF/mB/mB/VD/mB/tQ;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/boJUF/mB/mB/VD/mB/tQ;

    const-string v1, "NETWORK_UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/boJUF/mB/mB/VD/mB/tQ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boJUF/mB/mB/VD/mB/tQ;->LA:Lcom/boJUF/mB/mB/VD/mB/tQ;

    new-instance v0, Lcom/boJUF/mB/mB/VD/mB/tQ;

    const-string v1, "NETWORK_WIFI"

    invoke-direct {v0, v1, v4}, Lcom/boJUF/mB/mB/VD/mB/tQ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boJUF/mB/mB/VD/mB/tQ;->cp:Lcom/boJUF/mB/mB/VD/mB/tQ;

    new-instance v0, Lcom/boJUF/mB/mB/VD/mB/tQ;

    const-string v1, "NETWORK_2G"

    invoke-direct {v0, v1, v5}, Lcom/boJUF/mB/mB/VD/mB/tQ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boJUF/mB/mB/VD/mB/tQ;->On:Lcom/boJUF/mB/mB/VD/mB/tQ;

    new-instance v0, Lcom/boJUF/mB/mB/VD/mB/tQ;

    const-string v1, "NETWORK_3G"

    invoke-direct {v0, v1, v6}, Lcom/boJUF/mB/mB/VD/mB/tQ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boJUF/mB/mB/VD/mB/tQ;->TP:Lcom/boJUF/mB/mB/VD/mB/tQ;

    new-instance v0, Lcom/boJUF/mB/mB/VD/mB/tQ;

    const-string v1, "NETWORK_4G"

    invoke-direct {v0, v1, v7}, Lcom/boJUF/mB/mB/VD/mB/tQ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boJUF/mB/mB/VD/mB/tQ;->na:Lcom/boJUF/mB/mB/VD/mB/tQ;

    new-instance v0, Lcom/boJUF/mB/mB/VD/mB/tQ;

    const-string v1, "NETWORK_NO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/boJUF/mB/mB/VD/mB/tQ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boJUF/mB/mB/VD/mB/tQ;->oC:Lcom/boJUF/mB/mB/VD/mB/tQ;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/boJUF/mB/mB/VD/mB/tQ;

    sget-object v1, Lcom/boJUF/mB/mB/VD/mB/tQ;->LA:Lcom/boJUF/mB/mB/VD/mB/tQ;

    aput-object v1, v0, v3

    sget-object v1, Lcom/boJUF/mB/mB/VD/mB/tQ;->cp:Lcom/boJUF/mB/mB/VD/mB/tQ;

    aput-object v1, v0, v4

    sget-object v1, Lcom/boJUF/mB/mB/VD/mB/tQ;->On:Lcom/boJUF/mB/mB/VD/mB/tQ;

    aput-object v1, v0, v5

    sget-object v1, Lcom/boJUF/mB/mB/VD/mB/tQ;->TP:Lcom/boJUF/mB/mB/VD/mB/tQ;

    aput-object v1, v0, v6

    sget-object v1, Lcom/boJUF/mB/mB/VD/mB/tQ;->na:Lcom/boJUF/mB/mB/VD/mB/tQ;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/boJUF/mB/mB/VD/mB/tQ;->oC:Lcom/boJUF/mB/mB/VD/mB/tQ;

    aput-object v2, v0, v1

    sput-object v0, Lcom/boJUF/mB/mB/VD/mB/tQ;->IL:[Lcom/boJUF/mB/mB/VD/mB/tQ;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/boJUF/mB/mB/VD/mB/tQ;
    .locals 1

    const-class v0, Lcom/boJUF/mB/mB/VD/mB/tQ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/boJUF/mB/mB/VD/mB/tQ;

    return-object v0
.end method

.method public static values()[Lcom/boJUF/mB/mB/VD/mB/tQ;
    .locals 1

    sget-object v0, Lcom/boJUF/mB/mB/VD/mB/tQ;->IL:[Lcom/boJUF/mB/mB/VD/mB/tQ;

    invoke-virtual {v0}, [Lcom/boJUF/mB/mB/VD/mB/tQ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/boJUF/mB/mB/VD/mB/tQ;

    return-object v0
.end method
