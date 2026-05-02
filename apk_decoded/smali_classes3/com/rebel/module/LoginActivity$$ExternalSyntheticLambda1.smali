.class public final synthetic Lcom/rebel/module/LoginActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/rebel/module/LoginActivity;

.field public final synthetic f$1:Ljava/lang/UnsatisfiedLinkError;


# direct methods
.method public synthetic constructor <init>(Lcom/rebel/module/LoginActivity;Ljava/lang/UnsatisfiedLinkError;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rebel/module/LoginActivity$$ExternalSyntheticLambda1;->f$0:Lcom/rebel/module/LoginActivity;

    iput-object p2, p0, Lcom/rebel/module/LoginActivity$$ExternalSyntheticLambda1;->f$1:Ljava/lang/UnsatisfiedLinkError;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/rebel/module/LoginActivity$$ExternalSyntheticLambda1;->f$0:Lcom/rebel/module/LoginActivity;

    iget-object v1, p0, Lcom/rebel/module/LoginActivity$$ExternalSyntheticLambda1;->f$1:Ljava/lang/UnsatisfiedLinkError;

    invoke-virtual {v0, v1}, Lcom/rebel/module/LoginActivity;->lambda$attemptLogin$2$com-src-module-LoginActivity(Ljava/lang/UnsatisfiedLinkError;)V

    return-void
.end method
