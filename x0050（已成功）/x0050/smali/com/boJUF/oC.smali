.class final Lcom/boJUF/oC;
.super Ljava/lang/Object;


# static fields
.field private static LA:Lcom/boJUF/Kuox;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/boJUF/Kuox;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/boJUF/Kuox;-><init>(B)V

    sput-object v0, Lcom/boJUF/oC;->LA:Lcom/boJUF/Kuox;

    return-void
.end method

.method static synthetic LA()Lcom/boJUF/Kuox;
    .locals 1

    sget-object v0, Lcom/boJUF/oC;->LA:Lcom/boJUF/Kuox;

    return-object v0
.end method
