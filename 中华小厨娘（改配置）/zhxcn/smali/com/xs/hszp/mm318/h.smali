.class final Lcom/xs/hszp/mm318/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xs/hszp/mm318/a/f;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/xs/hszp/mm318/XsMm318Pay$IOnXsMm318PayListener;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/xs/hszp/mm318/XsMm318Pay$IOnXsMm318PayListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xs/hszp/mm318/h;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/xs/hszp/mm318/h;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/xs/hszp/mm318/h;->c:Lcom/xs/hszp/mm318/XsMm318Pay$IOnXsMm318PayListener;

    iput-object p4, p0, Lcom/xs/hszp/mm318/h;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/xs/hszp/mm318/h;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/xs/hszp/mm318/h;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lcom/xs/hszp/mm318/h;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/xs/hszp/mm318/h;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xs/hszp/mm318/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xs/hszp/mm318/h;->c:Lcom/xs/hszp/mm318/XsMm318Pay$IOnXsMm318PayListener;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xs/hszp/mm318/h;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/xs/hszp/mm318/h;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/xs/hszp/mm318/h;->f:Ljava/lang/String;

    # invokes: Lcom/xs/hszp/mm318/XsMm318Pay;->callXsMm319PayListener(Lcom/xs/hszp/mm318/XsMm318Pay$IOnXsMm318PayListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/xs/hszp/mm318/XsMm318Pay;->access$0(Lcom/xs/hszp/mm318/XsMm318Pay$IOnXsMm318PayListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
