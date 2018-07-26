.class public final enum Lcom/zy/hez/net/a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zy/hez/net/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/zy/hez/net/a;

.field private static final synthetic c:[Lcom/zy/hez/net/a;


# instance fields
.field public b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/zy/hez/net/a;

    const-string v1, "JSON"

    const-string v2, "application/json;charset=UTF-8"

    invoke-direct {v0, v1, v3, v2}, Lcom/zy/hez/net/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zy/hez/net/a;->a:Lcom/zy/hez/net/a;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/zy/hez/net/a;

    sget-object v1, Lcom/zy/hez/net/a;->a:Lcom/zy/hez/net/a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/zy/hez/net/a;->c:[Lcom/zy/hez/net/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/zy/hez/net/a;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zy/hez/net/a;
    .locals 1

    const-class v0, Lcom/zy/hez/net/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zy/hez/net/a;

    return-object v0
.end method

.method public static values()[Lcom/zy/hez/net/a;
    .locals 1

    sget-object v0, Lcom/zy/hez/net/a;->c:[Lcom/zy/hez/net/a;

    invoke-virtual {v0}, [Lcom/zy/hez/net/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zy/hez/net/a;

    return-object v0
.end method
