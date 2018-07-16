.class Lcom/dataeye/c/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dataeye/c/i;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/dataeye/c/i;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/dataeye/c/i;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/dataeye/b/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/dataeye/c/i;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/dataeye/b/a;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dataeye/c/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
