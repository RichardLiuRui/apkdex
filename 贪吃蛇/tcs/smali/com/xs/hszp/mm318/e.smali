.class final Lcom/xs/hszp/mm318/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/xs/hszp/mm318/IOnReadySendSmsListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/xs/hszp/mm318/IOnReadySendSmsListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xs/hszp/mm318/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/xs/hszp/mm318/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/xs/hszp/mm318/e;->c:Lcom/xs/hszp/mm318/IOnReadySendSmsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/xs/hszp/mm318/e;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/xs/hszp/mm318/e;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/xs/hszp/mm318/e;->c:Lcom/xs/hszp/mm318/IOnReadySendSmsListener;

    # invokes: Lcom/xs/hszp/mm318/XsMm318;->payStart(Landroid/content/Context;Ljava/lang/String;Lcom/xs/hszp/mm318/IOnReadySendSmsListener;)V
    invoke-static {v0, v1, v2}, Lcom/xs/hszp/mm318/XsMm318;->access$2(Landroid/content/Context;Ljava/lang/String;Lcom/xs/hszp/mm318/IOnReadySendSmsListener;)V

    return-void
.end method
