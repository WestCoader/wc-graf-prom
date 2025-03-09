resource "aws_ecs_task_definition" "ecs_task_grafana" {
 family             = "my-ecs-task"
 network_mode       = "awsvpc"
 execution_role_arn = "arn:aws:iam::532199187081:role/ecsTaskExecutionRole"
 cpu                = 256
 runtime_platform {
   operating_system_family = "LINUX"
   cpu_architecture        = "X86_64"
 }
 container_definitions = jsonencode([
      {
        "name": "grafana",
        "image": "grafana/grafana:latest",
        "memory": 128,
        "portMappings": [
          {
            "containerPort": 3000,
            "protocol": "tcp"
          }
        ]
      }
 ])
}

resource "aws_ecs_task_definition" "ecs_task_prometheus" {
 family             = "my-ecs-task"
 network_mode       = "awsvpc"
 execution_role_arn = "arn:aws:iam::532199187081:role/ecsTaskExecutionRole"
 cpu                = 256
 runtime_platform {
   operating_system_family = "LINUX"
   cpu_architecture        = "X86_64"
 }
 container_definitions = jsonencode([
    {
      "name": "prometheus",
      "image": "prom/prometheus:latest",
      "memory": 128,
      "portMappings": [
        {
        "containerPort": 9090,
        "protocol": "tcp"
        }
      ]
    }
 ])
}

resource "aws_ecs_task_definition" "ecs_task_node_exporter" {
 family             = "my-ecs-task"
 network_mode       = "awsvpc"
 execution_role_arn = "arn:aws:iam::532199187081:role/ecsTaskExecutionRole"
 cpu                = 256
 runtime_platform {
   operating_system_family = "LINUX"
   cpu_architecture        = "X86_64"
 }
 container_definitions = jsonencode([
    {
      "name": "node-exporter",
      "image": "prom/node-exporter:latest",
      "memory": 128,
      "portMappings": [
        {
          "containerPort": 9100,
          "protocol": "tcp"
        }
      ]
    }
 ])
}