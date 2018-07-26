.class public final enum Lcom/zxhykj/xinzf/reqs/a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zxhykj/xinzf/reqs/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/zxhykj/xinzf/reqs/a;

.field private static final synthetic c:[Lcom/zxhykj/xinzf/reqs/a;


# instance fields
.field public b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/zxhykj/xinzf/reqs/a;

    const-string v1, "JSON"

    const-string v2, "application/json;charset=UTF-8"

    invoke-direct {v0, v1, v3, v2}, Lcom/zxhykj/xinzf/reqs/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zxhykj/xinzf/reqs/a;->a:Lcom/zxhykj/xinzf/reqs/a;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/zxhykj/xinzf/reqs/a;

    sget-object v1, Lcom/zxhykj/xinzf/reqs/a;->a:Lcom/zxhykj/xinzf/reqs/a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/zxhykj/xinzf/reqs/a;->c:[Lcom/zxhykj/xinzf/reqs/a;

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

    iput-object p3, p0, Lcom/zxhykj/xinzf/reqs/a;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zxhykj/xinzf/reqs/a;
    .locals 1

    const-class v0, Lcom/zxhykj/xinzf/reqs/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zxhykj/xinzf/reqs/a;

    return-object v0
.end method

.method public static values()[Lcom/zxhykj/xinzf/reqs/a;
    .locals 1

    sget-object v0, Lcom/zxhykj/xinzf/reqs/a;->c:[Lcom/zxhykj/xinzf/reqs/a;

    invoke-virtual {v0}, [Lcom/zxhykj/xinzf/reqs/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zxhykj/xinzf/reqs/a;

    return-object v0
.end method
