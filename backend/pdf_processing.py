```python
import PyPDF2

class PDFProcessor:
    def __init__(self):
        pass

    def read_pdf(self, file_path):
        pdf_file_obj = open(file_path, 'rb')
        pdf_reader = PyPDF2.PdfFileReader(pdf_file_obj)
        return pdf_reader

    def get_number_of_pages(self, pdf_reader):
        return pdf_reader.numPages

    def get_page_content(self, pdf_reader, page_number):
        page_obj = pdf_reader.getPage(page_number)
        return page_obj.extractText()

    def close_pdf(self, pdf_file_obj):
        pdf_file_obj.close()

# Example usage:
# pdf_processor = PDFProcessor()
# pdf_reader = pdf_processor.read_pdf('sample.pdf')
# print(pdf_processor.get_number_of_pages(pdf_reader))
# print(pdf_processor.get_page_content(pdf_reader, 0))
# pdf_processor.close_pdf(pdf_reader)
```