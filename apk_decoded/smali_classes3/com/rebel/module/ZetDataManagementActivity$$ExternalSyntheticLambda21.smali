.class public final synthetic Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/rebel/module/ZetDataManagementActivity;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/rebel/module/ZetDataManagementActivity;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda21;->f$0:Lcom/rebel/module/ZetDataManagementActivity;

    iput-object p2, p0, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda21;->f$1:Ljava/io/File;

    iput-object p3, p0, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda21;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda21;->f$0:Lcom/rebel/module/ZetDataManagementActivity;

    iget-object v1, p0, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda21;->f$1:Ljava/io/File;

    iget-object v2, p0, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda21;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/rebel/module/ZetDataManagementActivity;->lambda$addBackupRow$10$com-src-module-ZetDataManagementActivity(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method
