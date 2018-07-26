.class public final enum Lcom/zy/hez/b/d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zy/hez/b/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/zy/hez/b/d;

.field public static final enum b:Lcom/zy/hez/b/d;

.field private static final synthetic d:[Lcom/zy/hez/b/d;


# instance fields
.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Lcom/zy/hez/b/d;

    const-string v1, "GET"

    invoke-direct {v0, v1, v3, v2}, Lcom/zy/hez/b/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zy/hez/b/d;->a:Lcom/zy/hez/b/d;

    new-instance v0, Lcom/zy/hez/b/d;

    const-string v1, "POST"

    invoke-direct {v0, v1, v2, v4}, Lcom/zy/hez/b/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zy/hez/b/d;->b:Lcom/zy/hez/b/d;

    new-array v0, v4, [Lcom/zy/hez/b/d;

    sget-object v1, Lcom/zy/hez/b/d;->a:Lcom/zy/hez/b/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zy/hez/b/d;->b:Lcom/zy/hez/b/d;

    aput-object v1, v0, v2

    sput-object v0, Lcom/zy/hez/b/d;->d:[Lcom/zy/hez/b/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/zy/hez/b/d;->c:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zy/hez/b/d;
    .locals 1

    const-class v0, Lcom/zy/hez/b/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zy/hez/b/d;

    return-object v0
.end method

.method public static values()[Lcom/zy/hez/b/d;
    .locals 1

    sget-object v0, Lcom/zy/hez/b/d;->d:[Lcom/zy/hez/b/d;

    invoke-virtual {v0}, [Lcom/zy/hez/b/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zy/hez/b/d;

    return-object v0
.end method
