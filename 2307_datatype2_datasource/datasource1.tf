data "local_file" "dataresourcename" {
        filename = "/home/kiran/tf_b11/2307/text.txt"
}

resource "local_file" "f11data" {
        filename = "f11datafile"
        content = data.local_file.dataresourcename.content
}

