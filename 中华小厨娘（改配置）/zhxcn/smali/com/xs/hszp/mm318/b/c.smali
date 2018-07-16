.class final Lcom/xs/hszp/mm318/b/c;
.super Ljava/lang/Thread;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/xs/hszp/mm318/b/d;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/xs/hszp/mm318/b/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/xs/hszp/mm318/b/c;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xs/hszp/mm318/b/c;->c:Lcom/xs/hszp/mm318/b/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xs/hszp/mm318/b/c;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/xs/hszp/mm318/b/c;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xs/hszp/mm318/b/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
